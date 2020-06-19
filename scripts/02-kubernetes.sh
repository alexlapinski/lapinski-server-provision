#!/bin/sh

# Setup
sudo apt-get install curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get update

# Install
sudo apt-get -y install kubeadm kubelet kubectl
sudo apt-mark hold kubeadm kubelet kubectl

# Verify
kubeadm version