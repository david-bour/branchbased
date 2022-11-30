build:
	SHA=$$(git rev-parse HEAD) && \
	docker build -t gcr.io/devops-283720/fasterapi:$${SHA} -t gcr.io/devops-283720/fasterapi:latest .

push:
	SHA=$$(git rev-parse HEAD) && \
	docker push gcr.io/devops-283720/fasterapi:$${SHA} && \
	docker push gcr.io/devops-283720/fasterapi:latest