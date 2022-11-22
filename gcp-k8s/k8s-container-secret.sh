#!/bin/bash

# ############################################################
# This is used to create a k8s imagePullSecrets to pull
# container images from GCP.
# #############################################################

kubectl create secret docker-registry gcr-json-key \
    --docker-server=gcr.io \
    --docker-username=_json_key \
    --docker-password="$(cat ./secrets-service-account-gcp.json)" \
    --docker-email=dbourmail@gmail.com