DOCKER_IMG = packetferret/cocabona
DOCKER_TAG = 0.0.1

build:
	docker build -t $(DOCKER_IMG):$(DOCKER_TAG) docker/

run:
	docker run -it \
	-v C:\\Users\\calvi\\development\\packetferret\\cocabona:/home/tmp/files \
	-w /home/tmp/files \
	$(DOCKER_IMG):$(DOCKER_TAG) /usr/bin/zsh