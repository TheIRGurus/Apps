# -*- coding: utf-8 -*-

"""AppFunction implementation"""

import logging, requests
from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_circuits.decorators import required_field
from resilient_lib import IntegrationError, validate_fields

PACKAGE_NAME = "fn_qradar_mitre"
FN_NAME = "qradar_get_offense_mitre_reference"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'qradar_get_offense_mitre_reference'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)
        self.options = opts.get("fn_qradar_mitre", {})
        """
        required_fields = ['qradar_url', 'api_token', 'qradar_api_uri', 'case_manager_uri', 'verify_ssl']
        validate_fields(required_fields, self.options)
        """
        self.options = opts.get("fn_qradar_mitre", {})

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Get the MITRE Tactics and Techniques in relation to the rules that were fired to cause the offense in QRadar.
        Inputs:
            -   fn_inputs.qradar_offense_id
        """
        log = logging.getLogger(__name__)

        # Establish the Fields from IBM Security SOAR
        """
        required_fields = ['qradar_offense_id']
        validate_fields(required_fields,fn_inputs)
        """
        offense_id = fn_inputs.qradar_offense_id
        log.debug('Offense ID: {}'.format(offense_id))

        # Establish the Fields from the config file
        qradar_url = self.options['qradar_url']
        log.debug('QRadar Server: {}'.format(qradar_url))
        api_token = self.options['api_token']
        qradar_api_uri = self.options['qradar_api_uri']
        case_manager_uri = self.options['case_manager_uri']
        verify_ssl = self.options['verify_ssl']
        proxy_server = self.options['proxy_server']
        proxy_port = self.options['proxy_port']
        proxy_username = self.options['proxy_username']
        proxy_password = self.options['proxy_password']

        yield self.status_message("Starting App Function: '{0}'".format(FN_NAME))

        # Establish Proxy Settings
        if proxy_server and proxy_port:
            proxy_and_port = proxy_server + ':' + proxy_port
            if proxy_username and proxy_password:
                proxy_auth = proxy_username + ':' + proxy_password
                proxy_dict = {'https': 'https://' + proxy_auth + '@' + proxy_and_port}
            else:
                proxy_dict = {'https': 'https://' + proxy_and_port}
        else:
            proxy_dict = {}
        log.debug('Proxy Address: {}'.format(proxy_dict))

        # Establish Verify SSL Settings
        if verify_ssl in ('False',False):
            verify_ssl = False
        elif verify_ssl in ('True', True):
            verify_ssl = True
        else:
            Exception('verify_ssl must be either: True or False')

        # Establish a browser to host all requests.
        browser = requests.Session()
        headers = {"Content_Type": "application/json",
                            "SEC": api_token}
        browser.headers = headers
        browser.proxies = proxy_dict
        browser.verify = verify_ssl


        # Pull rules and mappings.
            # Checking which rules fired causing the offense.
        offense_results = browser.get("{}{}/siem/offenses/{}?fields=rules%28id%29".format(qradar_url,qradar_api_uri,offense_id))
        offense_results.raise_for_status()
        rules_list = offense_results.json()['rules']
        log.debug('Rules in Offense: {}'.format(rules_list))
        for rule in rules_list:
                # Checking each rule ID to collect the rule UUID and Name Associated with it.
            rules_results = browser.get("{}{}/analytics/rules/{}?fields=identifier".format(qradar_url,qradar_api_uri,rule['id']))
            rules_results.raise_for_status()
            rule['identifier'] = rules_results.json()['identifier']
            log.debug('Rule with Identifiers: {}'.format(rule))
                # Looking up the Rule ID to determine the any MITRE Tactics and Techniques.
            if proxy_dict:
                mitre_results = requests.get('{}{}/api/mitre/mitre_coverage/{}'.format(qradar_url,case_manager_uri,rule['identifier']),verify=verify_ssl,headers=headers,proxies=proxy_dict)
            else:
                mitre_results = requests.get('{}{}/api/mitre/mitre_coverage/{}'.format(qradar_url,case_manager_uri,rule['identifier']),verify=verify_ssl,headers=headers)
            mitre_results.raise_for_status()
            rule['name'] = list(mitre_results.json())[0]
            rule['mapping'] = mitre_results.json()[rule['name']]['mapping']
            log.debug('Mappings: {}'.format(rule['mapping']))


        yield self.status_message("Finished running App Function: '{0}'".format(FN_NAME))

        results = {'rules' : rules_list}
        log.debug('Results to Return: {}'.format(results))

        yield FunctionResult(results)
        # yield FunctionResult({}, success=False, reason="Bad call")
