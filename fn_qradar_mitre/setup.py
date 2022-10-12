#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import glob
import ntpath


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


setup(
    name="fn_qradar_mitre",
    display_name="fn_qradar_mitre",
    version="1.0.0",
    license="MIT License",
    author="IBM Security SOAR",
    author_email="nick.mumaw@ibm.com",
    url="http://ibm.biz/resilientcommunity",
    description="Functions the pull Mitre Tactics and Techniques from QRadar Rules.",
    long_description="""fn_qradar_mitre adds support to collect the MITRE reference from the rule that was fired causing the QRadar Offense that is being investigated. This allows us to determine the MITRE Tactic and Technique being used.""",
    install_requires=[
        "resilient-circuits>=41.0.0",
        "resilient-lib>=41.0.0"
    ],
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = fn_qradar_mitre.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./fn_qradar_mitre/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = fn_qradar_mitre.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = fn_qradar_mitre.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = fn_qradar_mitre.util.selftest:selftest_function"]
    }
)
