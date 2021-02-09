DOCKER_REPO=jamesfrosty/age-dockerhub
VERSION=v1.0.0-beta7

.PHONY: image push

image:
	DOCKER_BUILDKIT=1 docker build --build-arg VERSION=$(VERSION) -t $(DOCKER_REPO):latest .
	docker tag $(DOCKER_REPO):latest $(DOCKER_REPO):$(VERSION)

push:
	docker push $(DOCKER_REPO):latest
	docker push $(DOCKER_REPO):$(VERSION)
