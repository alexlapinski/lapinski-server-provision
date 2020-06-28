#!/bin/sh

STEP_NUMBER='10'
CHECK="\u2714"
HOSTNAME=lapinski-k8s-main
POD_CIDR=10.244.0.0/16

echo "[$STEP_NUMBER].1 SWAPOFF"
sudo swapoff -a
echo "[$STEP_NUMBER].1 DONE"

IS_HOSTNAME_SET=$(hostnamectl status | grep $HOSTNAME | wc -l)
# TODO: FIgure out why check is throwing a runtiome error
if [[ "$IS_HOSTNAME_SET" = "0" ]];
then
    # Assign Unique Hostname
    echo "[$STEP_NUMBER].2 Setting Hostname to $HOSTNAME"
    sudo hostnamectl set-hostname $HOSTNAME
    echo "[$STEP_NUMBER].2 DONE"
else
    echo "[$STEP_NUMBER].2 Hostname is correct already"
fi

# Initalize K8s on main node
echo "[$STEP_NUMBER].3 Initalizing Network with CIDR $POD_CIDR"
sudo kubeadm init --pod-network-cidr=$POD_CIDR
echo "[$STEP_NUMBER].3 DONE"

echo "[$STEP_NUMBER].4 SWAPON"
sudo swapon -a
echo "[$STEP_NUMBER].4 DONE"
echo "[$STEP_NUMBER] --- COMPLETED $CHECK"