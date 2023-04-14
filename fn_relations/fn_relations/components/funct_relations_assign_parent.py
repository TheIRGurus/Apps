# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""Function implementation"""

import logging
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError
from resilient_lib import IntegrationError
from fn_relations.lib.utilities import unix_to_datetime, list_children, list_artifacts


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'relations_assign_parent"""

    def __init__(self, opts):
        """constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.options = opts.get("fn_relations", {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get("fn_relations", {})

    @function("relations_assign_parent")
    def _relations_assign_parent_function(self, event, *args, **kwargs):
        """Function: Create a parent/child relationship between the 2 incidents provided."""
        try:
            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            # Get the function parameters:
            relations_child_incident_id = kwargs.get("relations_child_incident_id")  # number
            relations_parent_incident_id = kwargs.get("relations_parent_incident_id")  # number

            log = logging.getLogger(__name__)
            log.info("relations_child_incident_id: %s", relations_child_incident_id)
            log.info("relations_parent_incident_id: %s", relations_parent_incident_id)

            
            def update_parent(incident):
                incident["properties"]["relations_level"] = "Parent"
                return(incident)
            
            
            def update_child(incident):
                incident["properties"]["relations_level"] = "Child"
                incident["properties"]["relations_parent_id"] = '<div class="rte"><div><a href="#incidents/{0}" target="_blank">{0}</a></div></div>'.format(relations_parent_incident_id)
                return(incident)
            

            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE
            yield StatusMessage("starting...")
            
            """Verify the Parent Incident"""
            try:
                self.rest_client().get("/incidents/{}".format(relations_parent_incident_id))
            except Exception as e:
                if type(e).__name__ == 'SimpleHTTPException':
                    raise FunctionError("Parent incident provided does not exist: {}".format(relations_parent_incident_id))
                else:
                    raise FunctionError(e)
            
            """Verify that Child and Parent Incidents are Different"""
            if relations_child_incident_id == relations_parent_incident_id:
                raise FunctionError("Parent and Child incident can not be the same incident: {}".format(relations_parent_incident_id))
            
            """Update the child"""
            log.info('Updating Child Incident')
            updated_child_incident = self.rest_client().get_put("/incidents/{}".format(relations_child_incident_id), update_child)
            log.debug('Updated Child Incident: {}'.format(updated_child_incident))
            
            child_artifacts = self.rest_client().get("/incidents/{}/artifacts?handle_format=names".format(relations_child_incident_id))
            child_artifact_values = list_artifacts(child_artifacts)
            log.debug('Child Related Parent Incidents: {}'.format(child_artifact_values))
            if relations_parent_incident_id not in child_artifact_values:
                log.info('Adding Child Artifact')
                new_artifact = {'description': 'Parent Incident ID in Relationship',
                                'type': 'related_parent_incident',
                                'value': relations_parent_incident_id}
                log.debug('New Child Artifact: {}'.format(new_artifact))
                posted_child_artifact = self.rest_client().post("/incidents/{}/artifacts".format(relations_child_incident_id),new_artifact)[0]
                log.info('Added Child Incident Artifact -- Artifact Type: {0} | Artifact ID: {1} | Artifact Value: {2}'.format(posted_child_artifact['type'],posted_child_artifact['id'],posted_child_artifact['value']))
                child_artifact_results = {"success": True, "content": posted_child_artifact}
            else:
                log.info('Child Artifact Already Exists')
                child_artifact_results = {"success": False, "content": "Parent Already in Artifacts"}
            log.info("Child Updated")
        
            """Update the parent"""
            log.info('Updating Parent Incident')
            updated_parent_incident = self.rest_client().get_put("/incidents/{}".format(relations_parent_incident_id), update_parent)
            log.debug('Updated Parent Incident: {}'.format(updated_parent_incident))
            
            child_table = self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(relations_parent_incident_id))
            children_incidents = list_children(child_table)
            log.debug('Children Incidents of Parent: {}'.format(children_incidents))            
            if relations_child_incident_id not in children_incidents:
                log.info('Adding Child Incident Row')
                child_incident = self.rest_client().get("/incidents/{}".format(relations_child_incident_id))
                new_row = {'cells': {'relations_incident_id': {'value': '<div class="rte"><div><a href="#incidents/{0}" target="_blank">{0}</a></div></div>'.format(child_incident['id'])},
                                     'relations_incident_name': {'value': child_incident['name']},
                                     'relations_incident_status': {'value': 'Active' if child_incident['plan_status'] == 'A' else 'Closed'}
                           }}
                log.debug('New Child Incident Row: {}'.format(new_row))                
                posted_row = self.rest_client().post("/incidents/{}/table_data/dt_relations_child_incidents/row_data?handle_format=names".format(relations_parent_incident_id),new_row)
                log.info('Added Row -- Row ID: {0} | Incident ID: {1} | Incident Name: {2}'.format(posted_row['id'],child_incident['id'],posted_row['cells']['relations_incident_name']['value']))                
                table_additions_results = {"success": True, "content": posted_row}
            else:
                log.info('Child Incident Already in Data Table')
                table_additions_results = {"success": False, "content": "Incident Already in Data Table"}
                
            parent_artifacts = self.rest_client().get("/incidents/{}/artifacts?handle_format=names".format(relations_parent_incident_id))
            parent_artifact_values = list_artifacts(parent_artifacts)
            log.debug('Parent Related Parent Incidents: {}'.format(parent_artifact_values))
            if relations_parent_incident_id not in parent_artifact_values:
                log.info('Adding Parent Artifact')
                new_artifact = {'description': 'Parent Incident ID in Relationship',
                                'type': 'related_parent_incident',
                                'value': relations_parent_incident_id}
                log.debug('New Parent Artifact: {}'.format(new_artifact))
                posted_parent_artifact = self.rest_client().post("/incidents/{}/artifacts".format(relations_parent_incident_id),new_artifact)[0]
                log.info('Added Parent Incident Artifact -- Artifact Type: {0} | Artifact ID: {1} | Artifact Value: {2}'.format(posted_parent_artifact['type'],posted_parent_artifact['id'],posted_parent_artifact['value']))                
                parent_artifact_results = {"success": True, "content": posted_parent_artifact}
            else:
                log.info('Parent Artifact Already Exists')
                parent_artifact_results = {"success": False, "content": "Parent Already in Artifacts"}            
            log.info("Parent Updated")
        
            """Sync Notes from Child to Parent"""
            log.info('Checking for Child Notes to Sync')
            notes = self.rest_client().get("/incidents/{}/comments".format(relations_child_incident_id))
            if len(notes) > 0:
                for note in notes:
                    log.info('Syncing Note to Parent')
                    html_note = "Note from child incident: {}<br>".format(note["inc_id"]) + "On Date: {}<br>".format(unix_to_datetime(note["create_date"])) + "By: {}<br><br>".format(note["user_name"]) + note["text"]
                    new_note = {"text": {"format": "html", "content": html_note}}
                    log.debug('New Note: {}'.format(new_note))
                    synced_note = self.rest_client().post("/incidents/{}/comments".format(relations_parent_incident_id), new_note)
                    log.info('Added Parent Comment -- Comment ID: {0} | Comment Text: {1}'.format(synced_note['id'],synced_note['text']))
                log.info("Notes Synced")
            else:
                log.info("No Notes to Sync")
            
            yield StatusMessage("done...")

            results = {
                'child_artifact_results': child_artifact_results,
                'table_addition_results': table_additions_results,
                'parent_artifact_results': parent_artifact_results,
                'notes_synced': len(notes)
            }

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception:
            yield FunctionError()
