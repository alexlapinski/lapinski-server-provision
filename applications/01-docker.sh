#!/bin/sh
source ../functions/001-apt.sh

update

# Install
install "docker.io"

# Enable
sudo systemctl enable docker

# Verify
docker --version