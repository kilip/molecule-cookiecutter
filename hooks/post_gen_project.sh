#!/bin/bash

eval 'gh repo create --public {{ cookiecutter.repository_slug }} -d "{{ cookiecutter.description }}" --disable-wiki'

eval 'git init'
eval 'git add . -A'
eval 'pre-commit'
eval 'pre-commit install'
eval 'git commit -am "feat: initial commit"'
eval 'git remote add origin git@github.com:{{ cookiecutter.repository_slug }}.git'
eval 'git push -u origin main'
eval 'git push origin main:next'

{% if cookiecutter.bot_app_id %}
  eval 'gh secret set BOT_APP_ID --body "{{ cookiecutter.bot_app_id }}"'
{% endif %}

{% if cookiecutter.bot_app_private_key %}
  eval 'gh secret set BOT_APP_PRIVATE_KEY --body "{{ cookiecutter.bot_app_private_key }}"'
{% endif %}

{% if cookiecutter.galaxy_api_key %}
  eval 'gh secret set GALAXY_API_KEY --body "{{ cookiecutter.galaxy_api_key }}"'
{% endif %}
