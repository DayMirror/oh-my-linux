#!/usr/bin/env sh

version=2.0.4.17212
cur_dir=`pwd`

if [ ! -d ~/Applications ]; then
	mkdir ~/Applications
fi
cd ~/Applications
wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-${version}.tar.gz
tar -xzf jetbrains-toolbox-${version}.tar.gz
mv ~/Applications/jetbrains-toolbox-${version} ~/Applications/jetbrains-toolbox
cd ~/Applications/jetbrains-toolbox
./jetbrains-toolbox

cd ${cur_dir}
