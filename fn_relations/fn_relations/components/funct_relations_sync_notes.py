# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""Function implementation"""

import logging, json, re
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError
from datetime import datetime
from fn_relations.lib.utilities import unix_to_datetime, list_children


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'relations_sync_notes"""

    def __init__(self, opts):
        """constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.options = opts.get("fn_relations", {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.options = opts.get("fn_relations", {})

    @function("relations_sync_notes")
    def _relations_sync_notes_function(self, event, *args, **kwargs):
        """Function: Sync notes from the incident where the note is currently to the parent or child."""
        try:
            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            # Get the function parameters:
            incident_id = kwargs.get("incident_id")  # number
            relations_note_id = kwargs.get("relations_note_id")  # text

            log = logging.getLogger(__name__)
            log.info("incident_id: %s", incident_id)
            log.info("relations_note_id: %s", relations_note_id)
            

            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE
            yield StatusMessage("starting...")
            
            log.info('Gathering Note from Incident')
            note = self.rest_client().get("/incidents/{}/comments/{}?handle_format=names".format(incident_id, relations_note_id))
            log.debug('Note Gathered: {}'.format(note))
            incident = self.rest_client().get("/incidents/{}?handle_format=names".format(incident_id))
            if incident['properties']['relations_level'] == 'Child':
                log.info('Raising Child Note')
                id_regex = re.compile(r'#incidents/(\d+)"')
                sync_id = int(re.findall(id_regex,incident['properties']['relations_parent_id'])[0])
                log.info('Parent ID: {}'.format(sync_id))
                html_note = "Note from child incident: {}<br>".format(note["inc_id"]) + "On Date: {}<br>".format(unix_to_datetime(note["create_date"])) + "By: {}<br><br>".format(note["user_name"]) + note["text"]
                new_note = {"text": {"format": "html", "content": html_note}}
                log.debug('New Note: {}'.format(new_note))
                synced_note = self.rest_client().post("/incidents/{}/comments".format(sync_id), new_note)
                log.info('Added Parent Comment -- Comment ID: {0} | Comment Text: {1}'.format(synced_note['id'],synced_note['text']))                
            elif incident['properties']['relations_level'] == 'Parent':
                log.info('Pushing Parent Note')
                children_incidents = list_children(self.rest_client().get("/incidents/{}/table_data/dt_relations_child_incidents?handle_format=names".format(incident_id)))
                for child in children_incidents:
                    log.info('Syncing Note to Child')
                    html_note = "Note from parent incident: {}<br>".format(note["inc_id"]) + "On Date: {}<br>".format(unix_to_datetime(note["create_date"])) + "By: {}<br><br>".format(note["user_name"]) + note["text"]
                    new_note = {"text": {"format": "html", "content": html_note}}
                    log.debug('New Note: {}'.format(new_note))                    
                    synced_note = self.rest_client().post("/incidents/{}/comments".format(child), new_note)
                    log.info('Added Parent Comment -- Comment ID: {0} | Comment Text: {1}'.format(synced_note['id'],synced_note['text']))
                log.info("Notes Synced")
            else:
                log.info('Incident has no Relation Level, Unable to Sync Note')

            
            yield StatusMessage("done...")

            results = {
                "success": True
            }

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception:
            yield FunctionError()