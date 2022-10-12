# -*- coding: utf-8 -*-

"""
Function implementation test.
Usage: 
    resilient-circuits selftest -l fn_qradar_mitre
    resilient-circuits selftest --print-env -l fn_qradar_mitre

Return examples:
    return {
        "state": "success",
        "reason": "Successful connection to third party endpoint"
    }

    return {
        "state": "failure",
        "reason": "Failed to connect to third party endpoint"
    }
"""

import logging, requests

log = logging.getLogger(__name__)
log.setLevel(logging.INFO)
log.addHandler(logging.StreamHandler())


def selftest_function(opts):
    """
    Placeholder for selftest function. An example use would be to test package api connectivity.
    Suggested return values are be unimplemented, success, or failure.
    """
    try:
        app_configs = opts.get("fn_qradar_mitre", {})
        
        log.info("Pulling app.config values for fn_qradar_mitre")
        qradar_url = app_configs['qradar_url']
        api_token = app_configs['api_token']
        qradar_api_uri = app_configs['qradar_api_uri']
        case_manager_uri = app_configs['case_manager_uri']
        verify_ssl = app_configs['verify_ssl']
        proxy_server = app_configs['proxy_server']
        proxy_port = app_configs['proxy_port']
        proxy_username = app_configs['proxy_username']
        proxy_password = app_configs['proxy_password']
        
        log.info("Checking Proxy Settings")
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
        
        log.info("Determining if the SSL Cert needs Verified")        
        if verify_ssl in ('False',False):
            verify_ssl = False
        elif verify_ssl in ('True', True):
            verify_ssl = True
        else:
            Exception('verify_ssl must be either: True or False')
        
        log.info("Building Browser")
        browser = requests.Session()
        headers = {"Content_Type": "application/json",
                   "SEC": api_token}
        browser.headers = headers
        browser.proxies = proxy_dict
        browser.verify = verify_ssl
        
        log.info("Verifying API Access")
        offense_results = browser.get("{}{}/siem/offense_closing_reasons".format(qradar_url,qradar_api_uri))
        if offense_results.status_code != 200:
            Exception('Unable to Connect to Qradar API with connection error: {}'.format(offense_results.status_code))
        
        log.info("Verifying Case Manager Access")
        if proxy_dict:
            mitre_results = requests.get('{}{}/api/mapping'.format(qradar_url,case_manager_uri),verify=verify_ssl,headers=headers,proxies=proxy_dict)
        else:
            mitre_results = requests.get('{}{}/api/mapping'.format(qradar_url,case_manager_uri),verify=verify_ssl,headers=headers)
        if mitre_results.status_code != 200:
            Exception('Unable to Connect to Qradar Use Case Manager with connection error: {}'.format(mitre_results.status_code))

        return {
        "state": "success"}

    except Exception as err:
        return {
        "state": "failure",
        "reason": err
    }