#!/bin/sh
source ../functions/001-apt.sh

# Update
sudo add-apt-repository universe
sudo apt update

sudo apt install -y exfat-fuse exfat-utils


# Install
VERSION=1.19.4.2935-79e214ead_amd64
echo "Installing $VERSION from package"
sudo dpkg -i "../binaries/plexmediaserver_$VERSION.deb"

# Configure Additional settings
#
# TODO: For all external HDs, set their options to
# include 'nosuid,nodev,nofail'
#
# And other tasks from
# https://askubuntu.com/questions/395291/plex-media-server-wont-find-media-external-hard-drive
#

sudo chmod go+rx /media/alex
sudo chmod go+rx /mnt

# drives=$(ls /media/alex)
# TODO: Use variable list
sudo chmod go+rx /media/alex/terrabyte_drive
sudo chmod go+rx /media/alex/LapinskiBak