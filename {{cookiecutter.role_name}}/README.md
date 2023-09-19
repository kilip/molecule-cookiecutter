Ansible Role: {{ cookiecutter.role_name }}
=========
{{ cookiecutter.description }}

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/{{ cookiecutter.repository_url }}/.github/workflows/testing.yml?branch=main&style=flat-square)](https://github.com/{{ cookiecutter.repository_url }}/actions/workflows/testing.yml)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/{{ cookiecutter.repository_url }}?style=flat-square)](https://github.com/{{ cookiecutter.repository_url }}/releases)
[![GitHub](https://img.shields.io/github/license/{{ cookiecutter.repository_url }}?style=flat-square)](https://github.com/{{ cookiecutter.repository_url }}/blob/main/LICENSE)

Requirements
------------

None.

Role Variables
--------------

None

Dependencies
------------

Define dependencies here

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: {{ cookiecutter.role_name }} }

License
-------

MIT

Author Information
------------------

This role was created in 2023 by [Anthonius Munthi](https://itstoni.com).
