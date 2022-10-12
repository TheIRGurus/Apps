{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.properties.qradar_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: QRadar Get QRadar Rule MITRE Reference",
      "id": 74,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: QRadar Get QRadar Rule MITRE Reference",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "7696f13c-64ca-4205-81d0-043b24f126af",
      "view_items": [],
      "workflows": [
        "example_qradar_get_mitre_reference_from_rules"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1643999227825,
  "export_format_version": 2,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/qradar_offense_id",
      "hide_notification": false,
      "id": 348,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "qradar_offense_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "templates": [],
      "text": "qradar_offense_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "c6cac6bb-9718-40e9-8fb6-2cea26be7b5b",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "incident/qradar_id",
      "hide_notification": false,
      "id": 228,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "qradar_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "templates": [],
      "text": "qradar_id",
      "tooltip": "",
      "type_id": 0,
      "uuid": "aedb7df6-642a-4438-824d-fe24be34cfc0",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "apps": [],
      "created_date": 1643924657588,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Get the MITRE Tactics and Techniques in relation to the rules that were fired to cause the offense in QRadar.",
        "format": "text"
      },
      "destination_handle": "fn_qradar_mitre",
      "display_name": "QRadar Get Offense MITRE Reference",
      "export_key": "qradar_get_offense_mitre_reference",
      "id": 36,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1643924657610,
      "name": "qradar_get_offense_mitre_reference",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "uuid": "39773ed6-38b3-469e-a1c0-06cbd1d3a254",
      "version": 1,
      "view_items": [
        {
          "content": "c6cac6bb-9718-40e9-8fb6-2cea26be7b5b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: QRadar - Get MITRE Reference From Rules",
          "object_type": "incident",
          "programmatic_name": "example_qradar_get_mitre_reference_from_rules",
          "tags": [
            {
              "tag_handle": "fn_qradar_mitre",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 48
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 13,
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1643999226252,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1643999226252,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "241506af-3064-4ba0-8fbc-e8dbb07b19b9",
        "a540a924-826a-4afe-9c16-5a91bf69298f"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "fn_qradar_mitre",
      "name": "fn_qradar_mitre",
      "programmatic_name": "fn_qradar_mitre",
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "users": [],
      "uuid": "8a3bfdf1-9ceb-442e-9404-909e2cf30d22"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 6554,
    "major": 40,
    "minor": 0,
    "version": "40.0.6554"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [
    {
      "actions": [],
      "display_name": "QRadar Rules and MITRE Tactics and Techniques",
      "export_key": "qradar_rules_and_mitre_tactics_and_techniques",
      "fields": {
        "mitre_tactic": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/mitre_tactic",
          "hide_notification": false,
          "id": 230,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "mitre_tactic",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "MITRE Tactic",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "6096b539-324e-4866-8cfb-06b4196197d5",
          "values": [],
          "width": 158
        },
        "mitre_tactic_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/mitre_tactic_id",
          "hide_notification": false,
          "id": 231,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "mitre_tactic_id",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "MITRE Tactic ID",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "33255287-ef0b-432a-ac41-c118f361479a",
          "values": [],
          "width": 71
        },
        "mitre_technique": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/mitre_technique",
          "hide_notification": false,
          "id": 232,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "mitre_technique",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "MITRE Technique",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "e07746fb-2838-4cb2-b598-6d6514fe4ec6",
          "values": [],
          "width": 162
        },
        "mitre_technique_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/mitre_technique_id",
          "hide_notification": false,
          "id": 233,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "mitre_technique_id",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "MITRE Technique ID",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "a32ea711-0fd7-4603-85f0-f7a70a011bb1",
          "values": [],
          "width": 103
        },
        "rule_id": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/rule_id",
          "hide_notification": false,
          "id": 234,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "rule_id",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Rule ID",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "72864325-b766-453c-bc7d-0c2b09d145d0",
          "values": [],
          "width": 90
        },
        "rule_identifier": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/rule_identifier",
          "hide_notification": false,
          "id": 235,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "rule_identifier",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Rule Identifier",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "86b39faf-25de-4a74-b451-27848ae4eed6",
          "values": [],
          "width": 139
        },
        "rule_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/rule_name",
          "hide_notification": false,
          "id": 236,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "rule_name",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Rule Name",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "21dae6c6-22c8-4c74-9096-3aa23d872f2f",
          "values": [],
          "width": 229
        },
        "tactic_confidence_level": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/tactic_confidence_level",
          "hide_notification": false,
          "id": 237,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tactic_confidence_level",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Tactic Confidence Level",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "6d2c1e04-e5c3-4264-bc21-103d47d6cd8a",
          "values": [],
          "width": 135
        },
        "technique_confidence_level": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "qradar_rules_and_mitre_tactics_and_techniques/technique_confidence_level",
          "hide_notification": false,
          "id": 238,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "technique_confidence_level",
          "operation_perms": {},
          "operations": [],
          "order": 8,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Technique Confidence Level",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "b4e0e3d3-f90b-4346-8d4c-c4e7005a6550",
          "values": [],
          "width": 134
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "qradar_rules_and_mitre_tactics_and_techniques",
      "uuid": "0748bc42-9325-4158-9e73-bdf7a56bce54"
    }
  ],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 8,
        "workflow_id": "example_qradar_get_mitre_reference_from_rules",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_qradar_get_mitre_reference_from_rules\" isExecutable=\"true\" name=\"Example: QRadar - Get MITRE Reference From Rules\"\u003e\u003cdocumentation\u003eUsing the QRadar ID for the offense in question, this workflow will go and retrieve the related MITRE Tactics and Techniques from QRadar based on the defined rules.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0p4vlb7\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_13nnjbu\" name=\"QRadar Get Offense MITRE Referenc...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"39773ed6-38b3-469e-a1c0-06cbd1d3a254\"\u003e{\"inputs\":{},\"post_processing_script\":\"\\\"\\\"\\\" Example Results\\n{\\n    \u0027rules\u0027: [{\\n            \u0027id\u0027: 119751,\\n            \u0027identifier\u0027: \u0027a444890b-eca7-44f7-8903-962c12377715\u0027,\\n            \u0027name\u0027: \u0027Suspicious Activity Followed by Endpoint Administration\\n            Task\u0027,\\n            \u0027mapping\u0027: {\\n                \u0027Discovery\u0027: {\\n                    \u0027confidence\u0027: \u0027high\u0027,\\n                    \u0027user_override\u0027: False,\\n                    \u0027enabled\u0027: True,\\n                    \u0027ibm_default\u0027: True,\\n                    \u0027id\u0027: \u0027TA0007\u0027,\\n                    \u0027techniques\u0027: {\\n                        \u0027Network Share Discovery\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1135\u0027\\n                        },\\n                        \u0027Query Registry\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1012\u0027\\n                        },\\n                        \u0027Password Policy Discovery\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1201\u0027\\n                        },\\n                        \u0027Permission Groups Discovery\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1069\u0027\\n                        }\\n                    }\\n                },\\n                \u0027Credential Access\u0027: {\\n                    \u0027confidence\u0027: \u0027high\u0027,\\n                    \u0027user_override\u0027: False,\\n                    \u0027enabled\u0027: True,\\n                    \u0027ibm_default\u0027: True,\\n                    \u0027id\u0027: \u0027TA0006\u0027,\\n                    \u0027techniques\u0027: {\\n                        \u0027OS Credential Dumping\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1003\u0027\\n                        },\\n                        \u0027Credentials in Registry\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1552.002\u0027\\n                        },\\n                        \u0027Credentials In Files\u0027: {\\n                            \u0027confidence\u0027: \u0027high\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1552.001\u0027\\n                        },\\n                        \u0027Brute Force\u0027: {\\n                            \u0027confidence\u0027: \u0027medium\u0027,\\n                            \u0027enabled\u0027: True,\\n                            \u0027id\u0027: \u0027T1110\u0027\\n                        }\\n                    }\\n                },\\n                \u0027Command and Control\u0027: {\\n                    \u0027confidence\u0027: \u0027high\u0027,\\n                    \u0027user_override\u0027: False,\\n                    \u0027enabled\u0027: True,\\n                    \u0027ibm_default\u0027: False,\\n                    \u0027id\u0027: \u0027TA0011\u0027,\\n                    \u0027techniques\u0027: {}\\n                }\\n            }\\n        }, {\\n            \u0027id\u0027: 111851,\\n            \u0027identifier\u0027: \u0027e7f90768-1946-4e55-9922-f94bb3d635b7\u0027,\\n            \u0027name\u0027: \u0027QNI : Observed File Hash Associated with Malware Threat\u0027,\\n            \u0027mapping\u0027: {\\n                \u0027Execution\u0027: {\\n                    \u0027confidence\u0027: \u0027high\u0027,\\n                    \u0027user_override\u0027: False,\\n                    \u0027enabled\u0027: True,\\n                    \u0027ibm_default\u0027: True,\\n                    \u0027id\u0027: \u0027TA0002\u0027,\\n                    \u0027techniques\u0027: {}\\n                }\\n            }\\n        }, {\\n            \u0027id\u0027: 130651,\\n            \u0027identifier\u0027: \u0027724f71bf-abde-407f-aca7-4451366a7d63\u0027,\\n            \u0027name\u0027: \u0027Workstation Detected with Python, Powershell or Curl as HTTP User Agent\u0027,\\n            \u0027mapping\u0027: {}\\n        }, {\\n            \u0027id\u0027: 118701,\\n            \u0027identifier\u0027: \u0027f6d184fd-7111-4ca9-b22c-155886a35e7e\u0027,\\n            \u0027name\u0027: \u0027Detection of Malicious IOC\u0027,\\n            \u0027mapping\u0027: {\\n                \u0027Command and\\n                Control\u0027: {\\n                    \u0027confidence\u0027: \u0027high\u0027,\\n                    \u0027user_override\u0027: False,\\n                    \u0027enabled\u0027: True,\\n                    \u0027ibm_default\u0027: False,\\n                    \u0027id\u0027: \u0027TA0011\u0027,\\n                    \u0027techniques\u0027: {}\\n                }\\n            }\\n        }\\n    ]\\n}\\n\\n\\\"\\\"\\\"\\n\\nfor item in results.content[\u0027rules\u0027]:\\n  mapping = item[\u0027mapping\u0027]\\n  if mapping:\\n    for tactic in list(mapping):\\n      techniques = mapping[tactic][\u0027techniques\u0027]\\n      if techniques:\\n        for technique in list(techniques):\\n          new_row = incident.addRow(\u0027qradar_rules_and_mitre_tactics_and_techniques\u0027)\\n          new_row.rule_id = item[\u0027id\u0027]\\n          new_row.rule_identifier = item[\u0027identifier\u0027]\\n          new_row.rule_name = item[\u0027name\u0027]\\n          new_row.mitre_tactic = tactic\\n          new_row.mitre_tactic_id = mapping[tactic][\u0027id\u0027]\\n          new_row.tactic_confidence_level = mapping[tactic][\u0027confidence\u0027]\\n          new_row.mitre_technique = technique\\n          new_row.mitre_technique_id = techniques[technique][\u0027id\u0027]\\n          new_row.technique_confidence_level = techniques[technique][\u0027confidence\u0027]\\n      else:\\n        new_row = incident.addRow(\u0027qradar_rules_and_mitre_tactics_and_techniques\u0027)\\n        new_row.rule_id = item[\u0027id\u0027]\\n        new_row.rule_identifier = item[\u0027identifier\u0027]\\n        new_row.rule_name = item[\u0027name\u0027]\\n        new_row.mitre_tactic = tactic\\n        new_row.mitre_tactic_id = mapping[tactic][\u0027id\u0027]\\n        new_row.tactic_confidence_level = mapping[tactic][\u0027confidence\u0027]\\n  else:\\n    new_row = incident.addRow(\u0027qradar_rules_and_mitre_tactics_and_techniques\u0027)\\n    new_row.rule_id = item[\u0027id\u0027]\\n    new_row.rule_identifier = item[\u0027identifier\u0027]\\n    new_row.rule_name = item[\u0027name\u0027]\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.qradar_offense_id = incident.properties.qradar_id\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0p4vlb7\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_03ma0sn\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0p4vlb7\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_13nnjbu\"/\u003e\u003cendEvent id=\"EndEvent_15vapde\"\u003e\u003cincoming\u003eSequenceFlow_03ma0sn\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_03ma0sn\" sourceRef=\"ServiceTask_13nnjbu\" targetRef=\"EndEvent_15vapde\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_13nnjbu\" id=\"ServiceTask_13nnjbu_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"387\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0p4vlb7\" id=\"SequenceFlow_0p4vlb7_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"387\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"292.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_15vapde\" id=\"EndEvent_15vapde_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"696\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"714\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_03ma0sn\" id=\"SequenceFlow_03ma0sn_di\"\u003e\u003comgdi:waypoint x=\"487\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"696\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"591.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 8,
      "creator_id": "john_doe@company.com",
      "description": "Using the QRadar ID for the offense in question, this workflow will go and retrieve the related MITRE Tactics and Techniques from QRadar based on the defined rules.",
      "export_key": "example_qradar_get_mitre_reference_from_rules",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1643924657735,
      "name": "Example: QRadar - Get MITRE Reference From Rules",
      "object_type": "incident",
      "programmatic_name": "example_qradar_get_mitre_reference_from_rules",
      "tags": [
        {
          "tag_handle": "fn_qradar_mitre",
          "value": null
        }
      ],
      "uuid": "fda71f8a-dda6-4be2-8ff1-c593b8d1172c",
      "workflow_id": 48
    }
  ],
  "workspaces": []
}
