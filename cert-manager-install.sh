#!/bin/bash

# The global.leaderElection is because of GKE Autopilot
# https://cert-manager.io/docs/installation/compatibility/#gke-autopilot

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.10.1 \
  --set installCRDs=true \
  --set global.leaderElection.namespace=cert-manager