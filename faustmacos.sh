#!/usr/bin/env bash

# use it by terminal typing:
# bash faustmacos.sh

say Will do, sir

cd

cd Documents/

mkdir GitHub

cd GitHub

echo "Intalling HomeBrew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Intalling cmake, pkgconfig, and qt"

brew install cmake pkgconfig qt

echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile

echo "Cloning Faust repository into ~/Documents/GitHub"

git clone https://github.com/grame-cncm/faust.git

cd faust

git submodule update --init

echo "Intalling Faust"

make

sudo make install

say Congratulations! You have created a new element

open .
