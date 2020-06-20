#!/bin/sh

HOSTNAME=lapinski-k8s-main
POD_CIDR=10.244.0.0/16

echo "SWAPOFF"
sudo swapoff -a

# Assign Unique Hostname
echo "Setting Hostname to $HOSTNAME"
sudo hostnamectl set-hostname $HOSTNAME

# Initalize K8s on main node
echo "Initalizing Network with CIDR $POD_CIDR"
sudo kubeadm init --pod-network-cidr=$POD_CIDR

echo "SWAPON"
sudo swapon -a