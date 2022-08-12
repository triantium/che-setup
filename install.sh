#!/usr/bin/env bash

k3d cluster create --config config/k3d-config.yaml
sudo echo '127.0.1.1  kubernetes.triantium.de' >> /etc/hosts
chectl server:deploy --platform k8s --domain=kubernetes.triantium.de