# -*- coding: utf-8 -*-

"""Generate a default configuration-file section for fn_qradar_mitre"""


def config_section_data():
    """
    Produce add the default configuration section to app.config,
    for fn_qradar_mitre when called by `resilient-circuits config [-c|-u]`
    """
#    config_data = None

    config_data = u"""[fn_qradar_mitre]
    qradar_url = https://server.address
    api_token = 
    qradar_api_uri = /api
    case_manager_uri = /console/plugins/app_proxy:UseCaseManager_Service
    verify_ssl = [True:False]
    proxy_server = 
    proxy_port = 
    proxy_username = 
    proxy_password = 
    """
    return config_data
