#!/usr/bin/env sh

version=v6.1.0
npm_version=16

sudo apt-get install -y curl g++ make tar

# get source code
curl -sL -o openlens.tgz https://github.com/lensapp/lens/archive/refs/tags/${version}.tar.gz
tar xf ./openlens.tgz
mv ./lens-* ./lens
sed -i '/\"rpm\"\,/d' ./lens/package.json

# make sure nvm is available
source "${NVM_DIR}/nvm.sh"

# build
cd ./lens
nvm install ${npm_version} && nvm use ${npm_version} && npm install -g yarn
make build

# install the binary
find ./dist/ -type f -name "*.deb" -exec sudo apt-get install {} \;

# cleanup
cd ../
rm -rf ./lens
rm -f ./install_nvm.sh ./openlens.tgz
