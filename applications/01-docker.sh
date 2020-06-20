#!/bin/sh
source ../functions/index.sh

update()

# Install
install("docker.io")

# Enable
sudo systemctl enable docker

# Verify
docker --version