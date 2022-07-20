REGISTRY=quay.io
VERSION=1.0-3.5.10
IMAGE=openshift-zookeeper
PROJECT_ID=mronconi
PROJECT=${REGISTRY}/${PROJECT_ID}

all: build push

build:
	docker build -t ${PROJECT}/${IMAGE}:${VERSION} .

push:
	docker push ${PROJECT}/${IMAGE}:${VERSION}

.PHONY: all build push
