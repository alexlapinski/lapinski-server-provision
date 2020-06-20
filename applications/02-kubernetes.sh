#!/bin/sh
source ../functions/001-apt.sh

# Setup
install "curl"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
update

# Install
install("kubeadm kubelet kubectl")
sudo apt-mark hold kubeadm kubelet kubectl

# Verify
kubeadm version