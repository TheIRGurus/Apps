# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""Function implementation"""

import logging
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError
from fn_relations.lib.utilities import list_open_children


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'relations_auto_close_child_incidents"""

    def __init__(self, opts):
        """constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.options = opts.get("fn_relations", {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get("fn_relations", {})

    @function("relations_auto_close_child_incidents")
    def _relations_auto_close_child_incidents_function(self, event, *args, **kwargs):
        """Function: Close child incidents when the parent incident is closed."""
        try:
            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            # Get the function parameters:
            relations_parent_incident_id = kwargs.get("relations_parent_incident_id")  # number

            log = logging.getLogger(__name__)
            log.info("relations_parent_incident_id: %s", relations_parent_incident_id)


            def close_child(incident):
                parent_incident = self.rest_client().get("/incidents/{}".format(relations_parent_incident_id))
                log.info('Updating Required on Close Fields')
                for req_field in req_fields:
                    if req_field.get(None):
                        if list(req_field.values())[0] == 'resolution_summary':
                            incident[list(req_field.values())[0]] = "Per Resolution Summary of the Parent:<br><br>" + parent_incident[list(req_field.values())[0]]
                        else:
                            incident[list(req_field.values())[0]] = parent_incident[list(req_field.values())[0]]                        
                    else:
                        incident[list(req_field.keys())[0]][list(req_field.values())[0]] = parent_incident[list(req_field.keys())[0]][list(req_field.values())[0]]
                incident["plan_status"] = 'C'
                incident["end_date"] = parent_incident['end_date']
                return(incident)


            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE
            yield StatusMessage("starting...")
            
            
            log.info('Gathering Child Incident List')
            incidents = list_open_children(self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(relations_parent_incident_id)))
            
            fields = self.rest_client().get("/types/incident/fields")
            log.info('Creating List of Fields Required on close')
            req_fields = []
            for field in fields:
                if field.get('required') == 'close':
                    req_fields.append({field['prefix']: field['name']})
            log.debug('Fields required on Close: {}'.format(req_fields))                                
            
            for incident in incidents:
                log.info('Closing Incident: {}'.format(incident))
                self.rest_client().get_put("/incidents/{}".format(incident),close_child)
                
                    
            yield StatusMessage("done...")

            results = {
                "success": True
            }

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception:
            yield FunctionError()