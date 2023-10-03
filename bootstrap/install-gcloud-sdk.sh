#!/usr/bin/env sh

# add gcloud cli distribution as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.asc] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# import google cloude public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.asc

sudo apt-get update 
sudo apt-get install google-cloud-cli
sudo apt-get install google-cloud-cli-minikube
sudo apt-get install kubectl
