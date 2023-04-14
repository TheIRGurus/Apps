# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""Function implementation"""

import logging, re
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError

class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'relations_sync_child_table_data"""

    def __init__(self, opts):
        """constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.options = opts.get("fn_relations", {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get("fn_relations", {})

    @function("relations_sync_child_table_data")
    def _relations_sync_child_table_data_function(self, event, *args, **kwargs):
        """Function: Update data within the Parent Table if the Child data changes."""
        try:
            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            # Get the function parameters:
            relations_child_incident_id = kwargs.get("relations_child_incident_id")  # number
            relations_parent_incident_id = kwargs.get("relations_parent_incident_id")  # number

            log = logging.getLogger(__name__)
            log.info("relations_child_incident_id: %s", relations_child_incident_id)
            log.info("relations_parent_incident_id: %s", relations_parent_incident_id)


            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE
            yield StatusMessage("starting...")
            
            
            log.info('Gathering Incident Data')
            child_incident = self.rest_client().get("/incidents/{}".format(relations_child_incident_id))
            log.info('Gathering the Child Incidents Data Table')
            child_table = self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(relations_parent_incident_id))
            log.debug('Child Incidents Data Table: {}'.format(child_table))
            for row in child_table['rows']:
                childid_regex = re.compile(r'#incidents/(\d+)"')
                incident_id = int(re.findall(childid_regex,row['cells']['relations_incident_id']['value'])[0])
                log.debug('Incident ID Found: {}'.format(incident_id))
                if incident_id == relations_child_incident_id:
                    log.info('Updating Child Row')
                    row['cells']['relations_incident_name']['value'] = child_incident['name']
                    row['cells']['relations_incident_status']['value'] = 'Active' if child_incident['plan_status'] == 'A' else 'Closed'
                    row_id = row['id']
                    updated_row = row
                    log.debug('Updated Row: {}'.format(updated_row))
            log.info('Pushing Updated Row')
            posted_row = self.rest_client().put('/incidents/{}/table_data/dt_relations_child_incidents/row_data/{}?handle_format=names'.format(relations_parent_incident_id,row_id),updated_row)            
            log.info('Row Updated -- Row ID: {0} | Incident ID: {1} | Incident Name: {2}'.format(posted_row['id'],child_incident['id'],posted_row['cells']['relations_incident_name']['value']))
            
            
            yield StatusMessage("done...")

            results = {
                "Success": True,
                "response": posted_row
            }

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception:
            yield FunctionError()