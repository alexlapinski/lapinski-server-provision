#!/bin/sh
source ../functions/001-apt.sh

# Update
update

# Install
VERSION=1.19.4.2935-79e214ead_amd64
echo "Installing $VERSION from package"
sudo dpkg -i "../binaries/plexmediaserver_$VERSION.deb"