#!/bin/bash

sudo apt-get install -y curl g++ make tar

# get source code
curl -sL -o openlens.tgz https://github.com/lensapp/lens/archive/refs/tags/v6.1.0.tar.gz
tar xf ./openlens.tgz
mv ./lens-* ./lens
sed -i '/\"rpm\"\,/d' ./lens/package.json

# make sure nvm is available
source "${NVM_DIR}/nvm.sh"

# build
cd ./lens
nvm install 16 && nvm use 16 && npm install -g yarn
make build

# install the binary
find ./dist/ -type f -name "*.deb" -exec sudo apt-get install {} \;

# cleanup
cd ../
rm -rf ./lens
rm -f ./install_nvm.sh ./openlens.tgz
