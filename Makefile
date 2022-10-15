FIREBASE_VERSION=11.14.4

.PHONY: build

build:
	docker build -t ${DOCKER_IMAGE}:${FIREBASE_VERSION} .