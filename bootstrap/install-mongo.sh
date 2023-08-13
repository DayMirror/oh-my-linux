#!/bin/bash

# installing mongodb server
curl -fsSL https://pgp.mongodb.com/server-6.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# installing mongodb compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.39.0_amd64.deb
sudo apt install ./mongodb-compass_1.39.0_amd64.deb
rm mongodb-compass_1.39.0_amd64.deb

