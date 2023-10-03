#!/usr/bin/env sh

# download installation file
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# unzip the installer
unzip awscliv2.zip

# run the installer
sudo ./aws/install

# remove the installer
rm -rf ./aws awscliv2.zip

# check the installation
aws --version
