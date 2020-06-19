#!/bin/sh

sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# Verify
kubectl get pods --all-namespaces