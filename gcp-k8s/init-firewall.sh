#!/bin/bash

gcloud container clusters update --region us-central1 autopilot-cluster-1 \
                                 --autoprovisioning-network-tags=default-allow-http
