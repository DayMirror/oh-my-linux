#!/usr/bin/env sh

git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
cd nerd-fonts

git sparse-checkout add patched-fonts/JetBrainsMono
git sparse-checkout add patched-fonts/Inconsolata
git sparse-checkout add patched-fonts/InconsolataGo
git sparse-checkout add patched-fonts/InconsolataLGC
git sparse-checkout add patched-fonts/Meslo

./install.sh JetBrainsMono
./install.sh Inconsolata
./install.sh InconsolataGo
./install.sh InconsolataLGC
./install.sh Meslo

cd ..
rm -rf nerd-fonts
