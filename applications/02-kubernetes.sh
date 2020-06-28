#!/bin/sh
source ../functions/001-apt.sh

# TODO: check the system state before installing
# Setup
apt-install "curl"
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt-update

# TODO: check the system state before installing
# Install
apt-install "kubeadm kubelet kubectl"
sudo apt-mark hold kubeadm kubelet kubectl

# Verify
kubeadm version

echo "Kubernetes Installed, starting configuration"
source ../configurations/10-k8s-deployment.sh
echo "K8s deployment complete"
echo "DONE\n"
echo "Setting up k8s pod-network"
source ../configurations/11-k8s-pod-network.sh
echo "DONE\n"
echo "Installing k8s Web-Dashboard"
source ../configurations/12-k8s-dashboard.sh
echo "DONE\n"