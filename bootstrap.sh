#!/bin/bash

sh ./bootstrap/setup-zsh.sh
sh ./bootstrap/install-git.sh
sh ./bootstrap/install-ansible.sh

sudo ansible-galaxy install -r requirements.yml
sudo ansible-playbook oh-my-linux.yml

sh ./bootstrap/install-nerd-fonts.sh
sh ./bootstrap/install-nvm.sh
sh ./bootstrap/install-sdkman.sh
sh ./bootstrap/install-pyenv.sh
sh ./bootstrap/install-docker.sh
sh ./bootstrap/install-openlens.sh
sh ./bootstrap/install-mongo.sh
