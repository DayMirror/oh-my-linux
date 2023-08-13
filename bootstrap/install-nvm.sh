#!/bin/bash

# node version manager
sudo apt-get install wget
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

# make sure nvm is available
source ~/.bashrc

# install latest node
nvm install --lts
