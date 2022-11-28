#!/bin/bash

gcloud iam service-accounts add-iam-policy-binding localdev@devops-283720.iam.gserviceaccount.com \
    --role roles/iam.workloadIdentityUser \
    --member "serviceAccount:devops-283720.svc.id.goog[externaldns-op/external-dns]"

# Already done through HELM
# kubectl annotate serviceaccount external-dns \
#     --namespace externaldns-op \
#     iam.gke.io/gcp-service-account=localdev@devops-283720.iam.gserviceaccount.com