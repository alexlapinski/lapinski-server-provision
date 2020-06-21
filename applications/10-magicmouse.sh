#!/bin/sh

echo "Installing DKMS"
sudo apt-get install -y dkms

echo "Getting driver source"
git clone https://github.com/rohitpid/Linux-Magic-Trackpad-2-Driver.git
cd Linux-Magic-Trackpad-2-Driver/scripts
chmod u+x install.sh

echo "Installing"
sudo ./install.sh
cd ../../
rm -rf Linux-Magic-Trackpad-2-Driver
