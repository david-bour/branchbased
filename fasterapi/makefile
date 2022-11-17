build:
	SHA=$$(git rev-parse HEAD) && \
	docker build -t davidbour/fasterapi:$${SHA} .

push:
	SHA=$$(git rev-parse HEAD) && \
	docker push davidbour/fasterapi:$${SHA}