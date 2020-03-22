DOCKER_IMG = packetferret/cocabona
DOCKER_TAG = development

build:
	docker build -t $(DOCKER_IMG):$(DOCKER_TAG) docker/

run:
	docker run -it \
	-v $(PWD):/home/tmp/files \
	-w /home/tmp/files \
	$(DOCKER_IMG):$(DOCKER_TAG) /usr/bin/zsh