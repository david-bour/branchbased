#!/bin/bash

KLUSTER_NAME="autopilot-cluster-1"
KLUSTER_REGION="us-central1"
KLUSTER_NAMESPACE="test"

kn "${KLUSTER_NAMESPACE}"

gcloud container clusters get-credentials --region "${KLUSTER_REGION}" "${KLUSTER_NAME}"