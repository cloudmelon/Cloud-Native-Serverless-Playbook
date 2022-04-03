#!/bin/bash
#Define a set of environment variables to be used in resource creations.
#

## Install fission
kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.15.1"

kubectl create namespace fission
kubectl apply -f https://github.com/fission/fission/releases/download/v1.15.1/fission-all-v1.15.1-minikube.yaml

## Install fission CLI
curl -Lo fission https://github.com/fission/fission/releases/download/v1.15.1/fission-v1.15.1-darwin-amd64 \
    && chmod +x fission && sudo mv fission /usr/local/bin/

## For M1 chip
curl -Lo fission https://github.com/fission/fission/releases/download/v1.15.1/fission-v1.15.1-darwin-arm64 \
    && chmod +x fission && sudo mv fission /usr/local/bin/



