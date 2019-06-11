#!/usr/bin/env bash

# use it by terminal typing:
# bash faustmacos.sh

say Will do, sir

# ---- HOMEBREW ----

command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }

# ---- HOMEBREW: CMAKE PKGCONFIG QT ----

echo "Intalling cmake, pkgconfig, and qt"

brew install cmake pkgconfig qt

echo 'export PATH="/usr/local/opt/qt/bin:$PATH"' >> ~/.bash_profile

# ---- FAUST ----

command -v faust2caqt >/dev/null 2>&1 || {
echo "Installing Faust";
echo "Creating ~/Documents/GitHub if doesn't exist";
cd;
mkdir -p Documents/GitHub;
cd Documents/GitHub;
echo "Cloning Faust repository into ~/Documents/GitHub";
git clone --recurse-submodules https://github.com/grame-cncm/faust.git;}

cd ~/Documents/GitHub/faust

git pull --recurse-submodules -v

make

sudo make install

open .

say Congratulations! You have created a new element
