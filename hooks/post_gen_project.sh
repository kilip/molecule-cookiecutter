#!/bin/sh

eval 'gh repo create --public {{ cookiecutter.repository_slug }} -d "{{ cookiecutter.description }}"'

eval 'git init'
eval 'git add . -A'
eval 'git commit -am "initial commit [skip ci]"'
eval 'git remote add origin git@github.com:{{ cookiecutter.repository_slug }}.git'
eval 'git push -u origin main'

eval 'gh secret set GALAXY_API_KEY --body "{{ cookiecutter.galaxy_api_key }}"'
