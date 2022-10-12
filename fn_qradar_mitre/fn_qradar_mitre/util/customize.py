# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_qradar_mitre"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_qradar_mitre package
    """
    return {
        "package": u"fn_qradar_mitre",
        "message_destinations": [u"fn_qradar_mitre"],
        "functions": [u"qradar_get_offense_mitre_reference"],
        "workflows": [u"example_qradar_get_mitre_reference_from_rules"],
        "actions": [u"Example: QRadar Get QRadar Rule MITRE Reference"],
        "incident_fields": [u"qradar_id"],
        "incident_artifact_types": [],
        "incident_types": [],
        "datatables": [u"qradar_rules_and_mitre_tactics_and_techniques"],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM Resilient Platform Version: 40.0.6554

    Contents:
    - Message Destinations:
        - fn_qradar_mitre
    - Functions:
        - qradar_get_offense_mitre_reference
    - Workflows:
        - example_qradar_get_mitre_reference_from_rules
    - Rules:
        - Example: QRadar Get QRadar Rule MITRE Reference
    - Incident Fields:
        - qradar_id
    - Data Tables:
        - qradar_rules_and_mitre_tactics_and_techniques
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)