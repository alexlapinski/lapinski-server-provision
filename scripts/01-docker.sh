#!/bin/sh

# Setup
sudo apt-get update

# Install
sudo apt-get install -y docker.io

# Enable
sudo systemctl enable docker

# Verify
docker --version