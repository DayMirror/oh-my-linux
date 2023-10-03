#!/usr/bin/env sh

sudo apt update
sudo apt install ca-certificates curl gnupg apt-transport-https software-properties-common
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt-cache policy docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker ${USER}
su - ${USER}
