#!/bin/sh

HOSTNAME=lapinski-k8s-main
POD_CIDR=10.244.0.0/16

sudo swapoff -a

# Assign Unique Hostname
sudo hostnamectl set-hostname $HOSTNAME

# Initalize K8s on main node
sudo kubeadm init --pod-network-cidr=$POD_CIDR