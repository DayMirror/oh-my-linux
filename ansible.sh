#!/usr/bin/env sh

ansible-galaxy install -r requirements.yml
ansible-playbook oh-my-linux.yml
