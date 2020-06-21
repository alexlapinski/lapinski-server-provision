#!/bin/sh
source ../functions/001-apt.sh

# Update
sudo add-apt-repository universe
update

install "exfat-fuse exfat-utils"


# Install
VERSION=1.19.4.2935-79e214ead_amd64
echo "Installing $VERSION from package"
sudo dpkg -i "../binaries/plexmediaserver_$VERSION.deb"

# Configure Additional settings
#
# TODO: For all external HDs, set their options to
# include 'nosuid,nodev,nofail'
#