#!/usr/bin/env bash

# use it by terminal typing:
# bash seampull.sh

say Will do, sir

cd

cd Documents/

mkdir GitHub

cd GitHub

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install cmake pkgconfig qt

echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile

git clone https://github.com/grame-cncm/faust.git

cd faust

git submodule update --init

make

sudo make install

say ciao belli
