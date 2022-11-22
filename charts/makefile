install:
	helm upgrade --install -f app-1.values.yml fasterapi-1 fasterapi
	helm upgrade --install -f app-2.values.yml fasterapi-2 fasterapi

# Install External-DNS
# After serviceAccount for externalDNS is created,
# we have to use workload identity binding to give
# it access to CloudDNS on GCP
xsa-install:
	helm upgrade --install -f external-dns-overrides.yml external-dns external-dns

xsa-uninstall:
	helm delete external-dns

# Creates the serviceAccount GCP to serviceAccount K8s binding
# and proper annotation. Helm will already have the kubectl
# 
xsa-workload:
	gcloud iam service-accounts add-iam-policy-binding localdev@devops-283720.iam.gserviceaccount.com \
		--role roles/iam.workloadIdentityUser \
		--member "serviceAccount:devops-283720.svc.id.goog[test/external-dns]"

test:
	curl echo1.toproduction.io

uninstall:
	helm delete fasterapi-1
	helm delete fasterapi-2