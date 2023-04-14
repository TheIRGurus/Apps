{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_level",
          "method": "not_in",
          "type": null,
          "value": [
            "Parent",
            "Child"
          ]
        }
      ],
      "enabled": true,
      "export_key": "Example: Relations - Assign Parent Incident",
      "id": 305,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Relations - Assign Parent Incident",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "fea0cd63-13ae-4e62-ac9f-f72719d2062a",
      "view_items": [
        {
          "content": "7b0ba40d-f96d-4dfd-9702-d754c2a394f1",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "example_relations_assign_parent"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.end_date",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_level",
          "method": "equals",
          "type": null,
          "value": "Parent"
        }
      ],
      "enabled": true,
      "export_key": "Example: Relations - Close Child Incidents",
      "id": 306,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Relations - Close Child Incidents",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 0,
      "uuid": "5fbb8c22-4bcc-4e5a-926f-42737d92c93e",
      "view_items": [],
      "workflows": [
        "example_relations_auto_close_child_incidents"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_level",
          "method": "equals",
          "type": null,
          "value": "Child"
        }
      ],
      "enabled": true,
      "export_key": "Example: Relations - Remove Child Relation",
      "id": 307,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Relations - Remove Child Relation",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "df8e400a-841a-4035-b5d1-7a1dc5c5d27d",
      "view_items": [
        {
          "content": "f9cf3241-1433-4932-9d88-46e19931f0c3",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "example_relations_remove_child_relation"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_level",
          "method": "equals",
          "type": null,
          "value": "Parent"
        }
      ],
      "enabled": true,
      "export_key": "Example: Relations - Sync Notes with Child",
      "id": 308,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Relations - Sync Notes with Child",
      "object_type": "note",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "279479b1-5ba2-4ec0-847b-552a97c2c317",
      "view_items": [],
      "workflows": [
        "example_relations_sync_notes_to_parentchild"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_level",
          "method": "equals",
          "type": null,
          "value": "Child"
        },
        {
          "evaluation_id": null,
          "field_name": "incident.properties.relations_parent_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": null,
          "method": "object_added",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: Relations - Sync Notes with Parent",
      "id": 309,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Relations - Sync Notes with Parent",
      "object_type": "note",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 0,
      "uuid": "6b526b25-a5bb-4f00-a36f-06017e15ef32",
      "view_items": [],
      "workflows": [
        "example_relations_sync_notes_to_parentchild"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": 2,
          "field_name": "incident.inc_training",
          "method": "equals",
          "type": null,
          "value": true
        },
        {
          "evaluation_id": 4,
          "field_name": "incident.name",
          "method": "changed",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 5,
          "field_name": "incident.plan_status",
          "method": "changed",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 1,
          "field_name": "incident.properties.relations_level",
          "method": "equals",
          "type": null,
          "value": "Child"
        },
        {
          "evaluation_id": 3,
          "field_name": "incident.properties.relations_parent_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "custom_condition": "(1 AND 2 AND 3) AND (4 OR 5)",
      "enabled": true,
      "export_key": "Example: Relations - Update Child Incident Parent Data Table",
      "id": 310,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: Relations - Update Child Incident Parent Data Table",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 0,
      "uuid": "1de10afe-7e8f-46c3-ba27-0d15f200b1a3",
      "view_items": [],
      "workflows": [
        "example_relations_update_child_table_data"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1681414767585,
  "export_format_version": 2,
  "export_type": null,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/incident_id",
      "hide_notification": false,
      "id": 290,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "incident_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_crowd_strike",
          "value": null
        },
        {
          "tag_handle": "fn_datatable_utils",
          "value": null
        },
        {
          "tag_handle": "fn_exchange_online",
          "value": null
        },
        {
          "tag_handle": "fn_joe_sandbox_analysis",
          "value": null
        },
        {
          "tag_handle": "fn_microsoft_sentinel",
          "value": null
        },
        {
          "tag_handle": "fn_randori",
          "value": null
        },
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "fn_scheduler",
          "value": null
        },
        {
          "tag_handle": "fn_service_now",
          "value": null
        },
        {
          "tag_handle": "fn_task_utils",
          "value": null
        },
        {
          "tag_handle": "fn_urlscanio",
          "value": null
        },
        {
          "tag_handle": "fn_utilities",
          "value": null
        },
        {
          "tag_handle": "playbook_089ad55b_a0c3_4268_89c0_328b4d6dbef6",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_18ae9bc1_7506_4e6e_851c_c0d2c980e5b8",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_1a703c9d_60c8_4761_ad11_5f3b42ff388e",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_43e96ffc_d3cb_49eb_8153_7028c276690b",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_79b55f83_7ae3_400e_9a75_23fecd79078a",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_9ecc8ab1_8902_4cd0_9773_7e1f3fb9cb4a",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_a96f711c_09fc_4f05_8da6_8ee64ef5bc77",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_f4138289_cd9e_4148_9805_d5a545f953db",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_f6af091f_0d6b_4f64_b067_6602a8a80d04",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "incident_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "811e99d7-d194-4ce8-86cc-aff5e01ab85c",
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
      "export_key": "__function/relations_child_incident_id",
      "hide_notification": false,
      "id": 1589,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "relations_child_incident_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_1050a58b_829a_4521_b550_a5b7e995e830",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_abbb5941_d28f_4a80_8536_87493a62a53a",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "relations_child_incident_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "acb92f9a-6593-4820-9d14-3b7eda74300f",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": true,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/relations_remove_notes",
      "hide_notification": false,
      "id": 1590,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "relations_remove_notes",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_abbb5941_d28f_4a80_8536_87493a62a53a",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "relations_remove_notes",
      "tooltip": "",
      "type_id": 11,
      "uuid": "cf5b1f50-14e6-4c72-9e64-cc79425ece08",
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
      "export_key": "__function/relations_note_id",
      "hide_notification": false,
      "id": 1591,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "relations_note_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_f4138289_cd9e_4148_9805_d5a545f953db",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "relations_note_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "2675c429-8d43-4485-b46a-f052e1dbb4bd",
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
      "export_key": "__function/relations_parent_incident_id",
      "hide_notification": false,
      "id": 1592,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "relations_parent_incident_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_1050a58b_829a_4521_b550_a5b7e995e830",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_538c6bae_cbbe_48da_a352_9877fe035677",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "relations_parent_incident_id",
      "tooltip": "",
      "type_id": 11,
      "uuid": "78b1bb0c-0961-4a6b-87e7-37878c3645ed",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": true,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/relations_remove_notes",
      "hide_notification": false,
      "id": 1587,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "relations_remove_notes",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "templates": [],
      "text": "Remove Notes from Relation?",
      "tooltip": "",
      "type_id": 6,
      "uuid": "f9cf3241-1433-4932-9d88-46e19931f0c3",
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
      "export_key": "actioninvocation/relations_parent_incident",
      "hide_notification": false,
      "id": 1588,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "relations_parent_incident",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "templates": [],
      "text": "Parent Incident",
      "tooltip": "",
      "type_id": 6,
      "uuid": "7b0ba40d-f96d-4dfd-9702-d754c2a394f1",
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
      "export_key": "incident/relations_parent_id",
      "hide_notification": false,
      "id": 833,
      "input_type": "textarea",
      "internal": false,
      "is_tracked": false,
      "name": "relations_parent_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": true,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "Parent ID",
      "tooltip": "Incident Number of the Parent Incident",
      "type_id": 0,
      "uuid": "b7a5848c-0aee-46ca-8c26-7610c95b0f43",
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
      "export_key": "incident/relations_level",
      "hide_notification": false,
      "id": 834,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "relations_level",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_1050a58b_829a_4521_b550_a5b7e995e830",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_538c6bae_cbbe_48da_a352_9877fe035677",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_abbb5941_d28f_4a80_8536_87493a62a53a",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_f4138289_cd9e_4148_9805_d5a545f953db",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "templates": [],
      "text": "Relation Level",
      "tooltip": "Is this incident considered a Parent or Child incident?",
      "type_id": 0,
      "uuid": "b9fb9107-3a78-41ef-bf5b-cf15715e2a20",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "None",
          "properties": null,
          "uuid": "bbbab623-a925-4748-a18a-b62e3094efea",
          "value": 379
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "Parent",
          "properties": null,
          "uuid": "4164bab9-49d5-4fda-8581-2da1185e1f1c",
          "value": 380
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "Child",
          "properties": null,
          "uuid": "5c7c5a82-f105-4551-9c7e-e39a781fc051",
          "value": 381
        }
      ]
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
      "created_date": 1681397287931,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Create a parent/child relationship between the 2 incidents provided.",
        "format": "text"
      },
      "destination_handle": "fn_relations",
      "display_name": "Relations: Assign Parent",
      "export_key": "relations_assign_parent",
      "id": 176,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1681397288181,
      "name": "relations_assign_parent",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_1050a58b_829a_4521_b550_a5b7e995e830",
          "value": "Playbook Tag"
        }
      ],
      "uuid": "0c0afabc-263a-45b0-9dcf-8225ca010e6c",
      "version": 1,
      "view_items": [
        {
          "content": "acb92f9a-6593-4820-9d14-3b7eda74300f",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "78b1bb0c-0961-4a6b-87e7-37878c3645ed",
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
          "name": "Example: Relations: Assign Parent",
          "object_type": "incident",
          "programmatic_name": "example_relations_assign_parent",
          "tags": [
            {
              "tag_handle": "fn_relations",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 302
        }
      ]
    },
    {
      "created_date": 1681397288197,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Close child incidents when the parent incident is closed.",
        "format": "text"
      },
      "destination_handle": "fn_relations",
      "display_name": "Relations: Auto Close Child Incidents",
      "export_key": "relations_auto_close_child_incidents",
      "id": 177,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1681397288436,
      "name": "relations_auto_close_child_incidents",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_538c6bae_cbbe_48da_a352_9877fe035677",
          "value": "Playbook Tag"
        }
      ],
      "uuid": "75127e2f-3446-4e3e-992b-e7e88321927e",
      "version": 1,
      "view_items": [
        {
          "content": "78b1bb0c-0961-4a6b-87e7-37878c3645ed",
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
          "name": "Example: Relations: Auto Close Child Incidents",
          "object_type": "incident",
          "programmatic_name": "example_relations_auto_close_child_incidents",
          "tags": [
            {
              "tag_handle": "fn_relations",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 301
        }
      ]
    },
    {
      "created_date": 1681397288451,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Used to remove the relation child relation from a Child incident as well as removing the parent relation from the Parent incident if it no longer has children.",
        "format": "text"
      },
      "destination_handle": "fn_relations",
      "display_name": "Relations: Remove Child Relation",
      "export_key": "relations_remove_child_relation",
      "id": 178,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1681397288665,
      "name": "relations_remove_child_relation",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_abbb5941_d28f_4a80_8536_87493a62a53a",
          "value": "Playbook Tag"
        }
      ],
      "uuid": "3ada2248-2dcb-415b-be77-b6ab43803500",
      "version": 1,
      "view_items": [
        {
          "content": "acb92f9a-6593-4820-9d14-3b7eda74300f",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "cf5b1f50-14e6-4c72-9e64-cc79425ece08",
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
          "name": "Example: Relations: Remove Child Relation",
          "object_type": "incident",
          "programmatic_name": "example_relations_remove_child_relation",
          "tags": [
            {
              "tag_handle": "fn_relations",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 299
        }
      ]
    },
    {
      "created_date": 1681397288672,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Update data within the Parent Table if the Child data changes.",
        "format": "text"
      },
      "destination_handle": "fn_relations",
      "display_name": "Relations: Sync Child Table Data",
      "export_key": "relations_sync_child_table_data",
      "id": 179,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1681397288772,
      "name": "relations_sync_child_table_data",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        }
      ],
      "uuid": "250d88c8-e474-42b7-a2b6-673ecc3646bb",
      "version": 1,
      "view_items": [
        {
          "content": "acb92f9a-6593-4820-9d14-3b7eda74300f",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "78b1bb0c-0961-4a6b-87e7-37878c3645ed",
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
          "name": "Example: Relations: Update Child Table Data",
          "object_type": "incident",
          "programmatic_name": "example_relations_update_child_table_data",
          "tags": [
            {
              "tag_handle": "fn_relations",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 300
        }
      ]
    },
    {
      "created_date": 1681397288779,
      "creator": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "description": {
        "content": "Sync notes from the incident where the note is currently to the parent or child.",
        "format": "text"
      },
      "destination_handle": "fn_relations",
      "display_name": "Relations: Sync Notes",
      "export_key": "relations_sync_notes",
      "id": 180,
      "last_modified_by": {
        "display_name": "John Doe",
        "id": 1,
        "name": "john_doe@company.com",
        "type": "user"
      },
      "last_modified_time": 1681397288878,
      "name": "relations_sync_notes",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_f4138289_cd9e_4148_9805_d5a545f953db",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "uuid": "4c26215f-66e7-4a75-a62e-8ce8a6707b2f",
      "version": 1,
      "view_items": [
        {
          "content": "811e99d7-d194-4ce8-86cc-aff5e01ab85c",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "2675c429-8d43-4485-b46a-f052e1dbb4bd",
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
          "name": "Example: Relations: Sync Notes to Parent/Child",
          "object_type": "note",
          "programmatic_name": "example_relations_sync_notes_to_parentchild",
          "tags": [
            {
              "tag_handle": "fn_relations",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 298
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 3,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [
    {
      "default_scan_option": "unsupported",
      "desc": "Incident ID of the parent of all related incidents to create a relation within Resilient incidents manually.",
      "enabled": true,
      "export_key": "related_parent_incident",
      "file": false,
      "id": 0,
      "multi_aware": false,
      "name": "Related Parent Incident",
      "parse_as_csv": false,
      "programmatic_name": "related_parent_incident",
      "reg_exp": null,
      "system": false,
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "use_for_relationships": true,
      "uuid": "ac5daf7e-c851-446f-ba21-eba70b76a14a",
      "version": 0
    }
  ],
  "incident_types": [
    {
      "create_date": 1681414765402,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1681414765402,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "1ecbd9ad-0baa-480a-8159-ad0810d226f1",
        "6bf8c47e-77a6-41ad-ad22-1004f7eee7cb"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "fn_relations",
      "name": "fn_relations",
      "programmatic_name": "fn_relations",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        },
        {
          "tag_handle": "playbook_1050a58b_829a_4521_b550_a5b7e995e830",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_538c6bae_cbbe_48da_a352_9877fe035677",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_7a33de62_69e6_4018_a103_5c2f5ce9d002",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_abbb5941_d28f_4a80_8536_87493a62a53a",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_f4138289_cd9e_4148_9805_d5a545f953db",
          "value": "Playbook Tag"
        },
        {
          "tag_handle": "playbook_fddf2279_2b3d_4c60_acb1_278b4662ad99",
          "value": "Playbook Tag"
        }
      ],
      "users": [],
      "uuid": "b23dd9f7-c304-4845-9a07-60a0fac536e2"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "playbooks": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 7899,
    "major": 45,
    "minor": 0,
    "version": "45.0.7899"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [
    {
      "actions": [],
      "display_name": "Relations Child Incidents",
      "export_key": "dt_relations_child_incidents",
      "fields": {
        "relations_incident_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "dt_relations_child_incidents/relations_incident_id",
          "hide_notification": false,
          "id": 835,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "relations_incident_id",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": true,
          "tags": [],
          "templates": [],
          "text": "Incident ID",
          "tooltip": "",
          "type_id": 1043,
          "uuid": "200a5fe3-cc84-4f6a-bb95-d3691b697c3d",
          "values": [],
          "width": 98
        },
        "relations_incident_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "dt_relations_child_incidents/relations_incident_name",
          "hide_notification": false,
          "id": 836,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "relations_incident_name",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Incident Name",
          "tooltip": "",
          "type_id": 1043,
          "uuid": "c383995f-112d-4e79-ba14-81f6f8efa6fe",
          "values": [],
          "width": 530
        },
        "relations_incident_status": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "dt_relations_child_incidents/relations_incident_status",
          "hide_notification": false,
          "id": 837,
          "input_type": "select",
          "internal": false,
          "is_tracked": false,
          "name": "relations_incident_status",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Incident Status",
          "tooltip": "",
          "type_id": 1043,
          "uuid": "515b5b5a-3d65-43bf-94f1-5bd6dbbf6ddd",
          "values": [
            {
              "default": false,
              "enabled": true,
              "hidden": false,
              "label": "Active",
              "properties": null,
              "uuid": "50f9e2d9-9fa2-41be-ad13-53953c399e6d",
              "value": 382
            },
            {
              "default": false,
              "enabled": true,
              "hidden": false,
              "label": "Closed",
              "properties": null,
              "uuid": "286232bc-f13f-4c4d-9669-5a1f00362fc1",
              "value": 383
            }
          ],
          "width": 85
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
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "dt_relations_child_incidents",
      "uuid": "c33985ac-c043-4a39-a20d-189b3b2c3582"
    }
  ],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "example_relations_sync_notes_to_parentchild",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_relations_sync_notes_to_parentchild\" isExecutable=\"true\" name=\"Example: Relations: Sync Notes to Parent/Child\"\u003e\u003cdocumentation\u003eSync any new notes created in the parent or child to either the children incidents (if this is labeled as a parent) or the parent incident (if this is labeled as a child).\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1thvvpx\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1gzt9n8\" name=\"Relations: Sync Notes\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"4c26215f-66e7-4a75-a62e-8ce8a6707b2f\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.relations_note_id = note.id\\ninputs.incident_id = incident.id\\n\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1thvvpx\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1ds0wb9\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1thvvpx\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1gzt9n8\"/\u003e\u003cendEvent id=\"EndEvent_1rjwgid\"\u003e\u003cincoming\u003eSequenceFlow_1ds0wb9\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1ds0wb9\" sourceRef=\"ServiceTask_1gzt9n8\" targetRef=\"EndEvent_1rjwgid\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1gzt9n8\" id=\"ServiceTask_1gzt9n8_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"521\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1thvvpx\" id=\"SequenceFlow_1thvvpx_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"521\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"359.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1rjwgid\" id=\"EndEvent_1rjwgid_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"908\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"926\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ds0wb9\" id=\"SequenceFlow_1ds0wb9_di\"\u003e\u003comgdi:waypoint x=\"621\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"908\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"764.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "creator_id": "john_doe@company.com",
      "description": "Sync any new notes created in the parent or child to either the children incidents (if this is labeled as a parent) or the parent incident (if this is labeled as a child).",
      "export_key": "example_relations_sync_notes_to_parentchild",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1681397289656,
      "name": "Example: Relations: Sync Notes to Parent/Child",
      "object_type": "note",
      "programmatic_name": "example_relations_sync_notes_to_parentchild",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "uuid": "197172e5-3b3f-4bd6-903f-22684305faa3",
      "workflow_id": 298
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "example_relations_assign_parent",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_relations_assign_parent\" isExecutable=\"true\" name=\"Example: Relations: Assign Parent\"\u003e\u003cdocumentation\u003eChange the necessary information to establish a child/parent relationship.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0cr3jwa\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cendEvent id=\"EndEvent_16awlp0\"\u003e\u003cincoming\u003eSequenceFlow_0y8dbv3\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0cr3jwa\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0vndp95\"/\u003e\u003cserviceTask id=\"ServiceTask_0vndp95\" name=\"Relations: Assign Parent\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"0c0afabc-263a-45b0-9dcf-8225ca010e6c\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.relations_child_incident_id = incident.id\\ninputs.relations_parent_incident_id = rule.properties.relations_parent_incident\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0cr3jwa\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0y8dbv3\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0y8dbv3\" sourceRef=\"ServiceTask_0vndp95\" targetRef=\"EndEvent_16awlp0\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_16awlp0\" id=\"EndEvent_16awlp0_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"829\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"847\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0cr3jwa\" id=\"SequenceFlow_0cr3jwa_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"439\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"318.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0vndp95\" id=\"ServiceTask_0vndp95_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"439\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0y8dbv3\" id=\"SequenceFlow_0y8dbv3_di\"\u003e\u003comgdi:waypoint x=\"539\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"829\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"684\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "creator_id": "john_doe@company.com",
      "description": "Change the necessary information to establish a child/parent relationship.",
      "export_key": "example_relations_assign_parent",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1681397290779,
      "name": "Example: Relations: Assign Parent",
      "object_type": "incident",
      "programmatic_name": "example_relations_assign_parent",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "uuid": "6792ec8c-394b-44ee-a9a7-658086b80e28",
      "workflow_id": 302
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "example_relations_remove_child_relation",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_relations_remove_child_relation\" isExecutable=\"true\" name=\"Example: Relations: Remove Child Relation\"\u003e\u003cdocumentation\u003eRemoves the child incident relation with the parent.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1th78wj\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0xwphzh\" name=\"Relations: Remove Child Relation\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"3ada2248-2dcb-415b-be77-b6ab43803500\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.relations_child_incident_id = incident.id\\ninputs.relations_remove_notes = rule.properties.relations_remove_notes\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1th78wj\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_01hdd3l\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1th78wj\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0xwphzh\"/\u003e\u003cendEvent id=\"EndEvent_00oruw2\"\u003e\u003cincoming\u003eSequenceFlow_01hdd3l\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_01hdd3l\" sourceRef=\"ServiceTask_0xwphzh\" targetRef=\"EndEvent_00oruw2\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0xwphzh\" id=\"ServiceTask_0xwphzh_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"459\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1th78wj\" id=\"SequenceFlow_1th78wj_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"459\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"328.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_00oruw2\" id=\"EndEvent_00oruw2_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"858\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"876\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01hdd3l\" id=\"SequenceFlow_01hdd3l_di\"\u003e\u003comgdi:waypoint x=\"559\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"858\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"708.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "creator_id": "john_doe@company.com",
      "description": "Removes the child incident relation with the parent.",
      "export_key": "example_relations_remove_child_relation",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1681397289943,
      "name": "Example: Relations: Remove Child Relation",
      "object_type": "incident",
      "programmatic_name": "example_relations_remove_child_relation",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "uuid": "41572f27-fbf5-43aa-83af-74869b78f64b",
      "workflow_id": 299
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "example_relations_update_child_table_data",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_relations_update_child_table_data\" isExecutable=\"true\" name=\"Example: Relations: Update Child Table Data\"\u003e\u003cdocumentation\u003eUpdate any data stored in the Child Incidents Data Table on the parent incident if changed, such as if the incident is closed.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_01fhwr8\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1s55mhz\" name=\"Relations: Sync Child Table Data\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"250d88c8-e474-42b7-a2b6-673ecc3646bb\"\u003e{\"inputs\":{},\"pre_processing_script\":\"import re\\n\\nregex = re.compile(r\u0027#incidents/(\\\\d+)\\\"\u0027)\\n\\ninputs.relations_parent_incident_id = int(re.findall(regex,incident.properties.relations_parent_id[\u0027content\u0027])[0])\\ninputs.relations_child_incident_id = incident.id\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_01fhwr8\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1elg4fa\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_01fhwr8\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1s55mhz\"/\u003e\u003cendEvent id=\"EndEvent_0y4c9lj\"\u003e\u003cincoming\u003eSequenceFlow_1elg4fa\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1elg4fa\" sourceRef=\"ServiceTask_1s55mhz\" targetRef=\"EndEvent_0y4c9lj\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1s55mhz\" id=\"ServiceTask_1s55mhz_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"454\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01fhwr8\" id=\"SequenceFlow_01fhwr8_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"454\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"326\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0y4c9lj\" id=\"EndEvent_0y4c9lj_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"830\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"848\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1elg4fa\" id=\"SequenceFlow_1elg4fa_di\"\u003e\u003comgdi:waypoint x=\"554\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"830\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"692\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "creator_id": "john_doe@company.com",
      "description": "Update any data stored in the Child Incidents Data Table on the parent incident if changed, such as if the incident is closed.",
      "export_key": "example_relations_update_child_table_data",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1681397290231,
      "name": "Example: Relations: Update Child Table Data",
      "object_type": "incident",
      "programmatic_name": "example_relations_update_child_table_data",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "uuid": "f97d33a3-e187-464e-bda0-7d1c4f246cca",
      "workflow_id": 300
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "example_relations_auto_close_child_incidents",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_relations_auto_close_child_incidents\" isExecutable=\"true\" name=\"Example: Relations: Auto Close Child Incidents\"\u003e\u003cdocumentation\u003eClose the incidents of the child incidents when the parent incident is closed.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1uc68vx\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0yp0hdg\" name=\"Relations: Auto Close Child Incid...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"75127e2f-3446-4e3e-992b-e7e88321927e\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.relations_parent_incident_id = incident.id\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1uc68vx\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0khr08e\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1uc68vx\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0yp0hdg\"/\u003e\u003cendEvent id=\"EndEvent_0zkm18a\"\u003e\u003cincoming\u003eSequenceFlow_0khr08e\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0khr08e\" sourceRef=\"ServiceTask_0yp0hdg\" targetRef=\"EndEvent_0zkm18a\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0yp0hdg\" id=\"ServiceTask_0yp0hdg_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"555\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1uc68vx\" id=\"SequenceFlow_1uc68vx_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"555\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"376.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0zkm18a\" id=\"EndEvent_0zkm18a_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"916\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"934\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0khr08e\" id=\"SequenceFlow_0khr08e_di\"\u003e\u003comgdi:waypoint x=\"655\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"916\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"785.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "creator_id": "john_doe@company.com",
      "description": "Close the incidents of the child incidents when the parent incident is closed.",
      "export_key": "example_relations_auto_close_child_incidents",
      "last_modified_by": "john_doe@company.com",
      "last_modified_time": 1681397290509,
      "name": "Example: Relations: Auto Close Child Incidents",
      "object_type": "incident",
      "programmatic_name": "example_relations_auto_close_child_incidents",
      "tags": [
        {
          "tag_handle": "fn_relations",
          "value": null
        }
      ],
      "uuid": "3be764f1-e29a-4d48-8fe6-6cbf8dda9686",
      "workflow_id": 301
    }
  ],
  "workspaces": []
}
