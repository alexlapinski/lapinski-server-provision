#!/bin/sh

# Prepare
echo "SWAPOFF"
sudo swapoff -a

# Install / Setup Flannel Networking
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# Verify
kubectl get pods --all-namespaces

# Cleanup
echo "SWAPON"
sudo swapon -a
echo "DONE"