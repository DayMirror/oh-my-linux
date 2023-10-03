#!/usr/bin/env sh

# installing mongodb compass
version=1.39.0
wget https://downloads.mongodb.com/compass/mongodb-compass_${version}_amd64.deb
sudo apt install ./mongodb-compass_${version}_amd64.deb
rm mongodb-compass_${version}_amd64.deb

