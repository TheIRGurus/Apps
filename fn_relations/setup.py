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
    name="fn_relations",
    display_name="fn_relations",
    version="1.0.2",
    license="Apache2",
    author="Nick Mumaw",
    author_email="Nick.Mumaw@ibm.com",
    url="https://www.ibm.com/security/intelligent-orchestration/soar",
    description="Builds Relationships of Incidents within IBM Security SOAR",
    long_description="""This package consists of 5 Functions, 5 Workflows, and 6 Rules along with 2 new fields and 1 new data table.

                        1. Assign Parent:

                            Used to assign children incidents to a parent by supplying the incident ID of the parent. The function configures both parent incident and child incident appropriately.

                        2. Remove Child Relation:

                            Used to remove child relationship with parent by removing all related content created in the relationship.

                        3. Sync Notes:

                            This is used to sync notes between the parent and child incidents with 2 different rules.

                        4. Sync Child Table Data:

                            Used to update child information within the table if the incident name or status changes.

                        5. Auto Close Child Incidents:

                            Allows the closing of all child incidents listed in the parent data table.""",
    install_requires=[
        "resilient-circuits>=45.0.0",
        "resilient-lib>=45.0.0"
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
            "{}FunctionComponent = fn_relations.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./fn_relations/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = fn_relations.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = fn_relations.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = fn_relations.util.selftest:selftest_function"]
    }
)
