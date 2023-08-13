#!/bin/bash

sh ./bootstrap/setup-zsh.sh
sh ./bootstrap/install-git.sh
sh ./bootstrap/install-ansible.sh
sh ./bootstrap/install-nerd-fonts.sh
sh ./bootstrap/install-nvm.sh
sh ./bootstrap/install-sdkman.sh
sh ./bootstrap/install-pyenv.sh
sh ./bootstrap/install-docker.sh
sh ./bootstrap/install-elasticsearch.sh
sh ./bootstrap/install-openlens.sh

ansible-galaxy install -r requirements.yml
ansible-playbook oh-my-linux.yml

