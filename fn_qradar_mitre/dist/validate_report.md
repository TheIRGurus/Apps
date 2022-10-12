

# Validation Report for fn_qradar_mitre

| SDK Version       | Generation Time          | Command Line Arguments Provided |
| :---------------- | ------------------------ | ------------------------------- |
| 43.1.2656 | 2022/02/03 17:23:55 | `package`: fn_qradar_mitre, `validate`: True |

## App Details
| Attribute | Value |
| --------- | ----- |
| `display_name` | fn_qradar_mitre |
| `name` | fn_qradar_mitre |
| `version` | 1.0.0 |
| `author` | IBM Security SOAR |
| `author_email` | nick.mumaw@ibm.com |
| `install_requires` | ['resilient-circuits>=41.0.0', 'resilient-lib>=41.0.0'] |
| `description` | Functions the pull Mitre Tactics and Techniques from QRadar Rules. |
| `long_description` | fn_qradar_mitre adds support to collect the MITRE reference from the rule that was fired causing the QRadar Offense that is being investigated. This allows us to determine the MITRE Tactic and Technique being used. |
| `url` | http://ibm.biz/resilientcommunity |
| `entry_points` | {'resilient.circuits.configsection': 'c:\\.python_envs\\fn_qradar_mitre\\fn_qradar_mitre\\fn_qradar_mitre\\util\\config.py',<br> 'resilient.circuits.customize': 'c:\\.python_envs\\fn_qradar_mitre\\fn_qradar_mitre\\fn_qradar_mitre\\util\\customize.py',<br> 'resilient.circuits.selftest': 'c:\\.python_envs\\fn_qradar_mitre\\fn_qradar_mitre\\fn_qradar_mitre\\util\\selftest.py'} |
| `SOAR version` | 40.0.6554 |
| `Proxy support` | Proxies not fully supported unless running on AppHost>=1.6 and resilient-circuits>=42.0.0 |

---


## `setup.py` file validation
| Severity | Name | Description | Solution |
| --- | --- | --- | --- |

<span style="color:green">Success</span>


---


## Package files validation

### `company_logo.png`
<span style="color:teal">INFO</span>: `company_logo.png` is the default icon. Consider using your own logo

Icons appear in SOAR when your app is installed with App Host


### LICENSE
<span style="color:teal">INFO</span>: `LICENSE` file is valid

It is recommended to manually validate the license. Suggested formats: MIT, Apache, and BSD


### `MANIFEST.in`
<span style="color:green">Pass</span>


### `apikey_permissions.txt`
<span style="color:green">Pass</span>


### `Dockerfile`
<span style="color:green">Pass</span>


### `entrypoint.sh`
<span style="color:green">Pass</span>


### ``config.py``
<span style="color:green">Pass</span>


### ``customize.py``
<span style="color:green">Pass</span>


### `README.md`
<span style="color:green">Pass</span>


### `app_logo.png`
<span style="color:green">Pass</span>


### LICENSE
<span style="color:green">Pass</span>

 
---
 

## Payload samples validation

### `payload_samples\qradar_get_offense_mitre_reference`
<span style="color:red">CRITICAL</span>: `output_json_example.json` and `output_json_schema.json` for `qradar_get_offense_mitre_reference` not found

Reload code using ```resilient-sdk codegen -p c:\.python_envs\fn_qradar_mitre\fn_qradar_mitre --reload```

 
---
 

## `resilient-circuits` selftest

<span style="color:green">Success</span>


---
 

## tox tests
<span style="color:teal">INFO</span>: `tox.ini` file not found in package path

(OPTIONAL) If you want to validate tests, include a tox.ini file



---
 

## Pylint Scan
<span style="color:teal">INFO</span>: Pylint scan passed with no errors

Run with `-v` to see the full pylint output



---
 

## Bandit Scan
<span style="color:teal">INFO</span>: Bandit scan passed with no issues

Run again with `-v` to see the full bandit output



---
 