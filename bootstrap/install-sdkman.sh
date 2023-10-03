#!/usr/bin/env sh

# install sdkman
sudo apt-get install wget
wget -qO- https://get.sdkman.io | bash

# make sure sdk command available
source ~/.bashrc

# install latest versions of some tools
sdk install java
sdk install maven
sdk install gradle
sdk install groovy
sdk install kotlin
