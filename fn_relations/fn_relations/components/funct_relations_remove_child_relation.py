# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""Function implementation"""

import logging, re
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'relations_remove_child_relation"""

    def __init__(self, opts):
        """constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.options = opts.get("fn_relations", {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get("fn_relations", {})

    @function("relations_remove_child_relation")
    def _relations_remove_child_relation_function(self, event, *args, **kwargs):
        """Function: Used to remove the relation child relation from a Child incident as well as removing the parent relation from the Parent incident if it no longer has children."""
        try:
            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            # Get the function parameters:
            relations_child_incident_id = kwargs.get("relations_child_incident_id")  # number
            relations_remove_notes = kwargs.get("relations_remove_notes")  # boolean

            log = logging.getLogger(__name__)
            log.info("relations_child_incident_id: %s", relations_child_incident_id)
            log.info("relations_remove_notes: %s", relations_remove_notes)
            
            
            def remove_child(incident):
                incident["properties"]["relations_level"] = "None"
                incident["properties"]["relations_parent_id"] = None
                return(incident)
            
            
            def remove_parent(incident):
                incident["properties"]["relations_level"] = "None"
                return(incident)    
            

            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE
            yield StatusMessage("starting...")
            
            
            regex = re.compile(r'#incidents/(\d+)"')
            parent_id = int(re.findall(regex, self.rest_client().get("/incidents/{}".format(relations_child_incident_id))['properties']['relations_parent_id'])[0])
            log.info('Parent ID: {}'.format(parent_id))

            log.info('Removing Child Relation')
            removed_child_incident = self.rest_client().get_put("/incidents/{}".format(relations_child_incident_id),remove_child)
            log.info('Child Relation Removed')
            log.debug('Incident details after Child Relation Removal: {}'.format(removed_child_incident))
            
            log.info('Removing Child Artifact')
            child_artifacts = self.rest_client().get("/incidents/{}/artifacts?handle_format=names".format(relations_child_incident_id))
            log.debug('Child Incident Artifacts: {}'.format(child_artifacts))
            for artifact in child_artifacts:
                if artifact['type'] == "related_parent_incident":
                    log.debug('Related Parent Incident: {}'.format(artifact))
                    self.rest_client().delete("/incidents/{0}/artifacts/{1}".format(relations_child_incident_id,artifact['id']))
                    log.info('Removed Child Incident Artifact -- Artifact Type: {0} | Artifact ID: {1} | Artifact Value: {2}'.format(artifact['type'],artifact['id'],artifact['value']))
            
            log.info('Removing Child from Data Table')
            child_table = self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(parent_id))
            log.debug('Parent Table of Children: {}'.format(child_table))
            for row in child_table['rows']:
                child_id = int(re.findall(regex, row['cells']['relations_incident_id']['value'])[0])
                if child_id == relations_child_incident_id:
                    self.rest_client().delete('/incidents/{0}/table_data/dt_relations_child_incidents/row_data/{1}'.format(parent_id, row['id']))
                    log.info('Removed Row -- Row ID: {0} | Incident ID: {1} | Incident Name: {2}'.format(row['id'], child_id, row['cells']['relations_incident_name']['value']))
            
            updated_child_table = self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(parent_id))
            log.debug('Parent Table of Children after Child Removal: {}'.format(updated_child_table))
            if len(updated_child_table['rows']) == 0:
                log.info('No Additional Children. Removing Parent Relation.')
                self.rest_client().get_put("/incidents/{}".format(parent_id),remove_parent)
                log.info('Parent Relation Removed')
                log.info('Removing Parent Artifact')
                parent_artifacts = self.rest_client().get("/incidents/{}/artifacts?handle_format=names".format(parent_id))
                log.debug('Parent Incident Artifacts: {}'.format(child_artifacts))
                for artifact in parent_artifacts:
                    if artifact['type'] == "related_parent_incident":
                        log.debug('Related Parent Incident: {}'.format(artifact))
                        self.rest_client().delete("/incidents/{0}/artifacts/{1}".format(parent_id,artifact['id']))
                        log.info('Removed Parent Incident Artifact -- Artifact Type: {0} | Artifact ID: {1} | Artifact Value: {2}'.format(artifact['type'],artifact['id'],artifact['value']))

            if relations_remove_notes:
                log.info('Removing Child Notes')
                child_comments = self.rest_client().get('/incidents/{0}/comments'.format(relations_child_incident_id))
                for comment in child_comments:
                    if 'Note from parent incident: {}'.format(parent_id) == comment['text'][:31]:
                        log.debug('Note Synced to Child: {}'.format(comment))
                        self.rest_client().delete('/incidents/{0}/comments/{1}'.format(relations_child_incident_id, comment['id']))
                        log.info('Removed Child Comment -- Comment ID: {0} | Comment Text: {1}'.format(comment['id'],comment['text']))

                parent_comments = self.rest_client().get('/incidents/{0}/comments'.format(parent_id))
                for comment in parent_comments:
                    if 'Note from child incident: {}'.format(relations_child_incident_id) == comment['text'][:30]:
                        log.debug('Note Synced to Parent: {}'.format(comment))
                        self.rest_client().delete('/incidents/{0}/comments/{1}'.format(parent_id, comment['id']))
                        log.info('Removed Parent Comment -- Comment ID: {0} | Comment Text: {1}'.format(comment['id'],comment['text']))


            yield StatusMessage("done...")

            results = {
                "success": True
            }

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception:
            yield FunctionError()