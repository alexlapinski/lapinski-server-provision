#!/bin/sh

echo "SWAPOFF"
sudo swapoff -a


sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# Verify
kubectl get pods --all-namespaces

echo "SWAPON"
sudo swapon -a