#!/bin/bash
#Define a set of environment variables to be used in resource creations.
#

export FISSION_NAMESPACE="fission"

helm show values fission-charts/fission-all


kubectl create namespace $FISSION_NAMESPACE
kubectl create -k "github.com/fission/fission/crds/v1?ref=v1.15.1"

helm repo add fission-charts https://fission.github.io/fission-charts/
helm repo update

helm install --version v1.15.1 --namespace $FISSION_NAMESPACE fission \
  --set serviceType=NodePort,routerServiceType=NodePort \
  fission-charts/fission-all