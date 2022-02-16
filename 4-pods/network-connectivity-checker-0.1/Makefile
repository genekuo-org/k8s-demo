-include Makefile.overrides

IMAGE ?= network-connectivity-checker:0.1
PREFIX="genedocker/"
FULL_IMAGE_TAG = "$(PREFIX)$(IMAGE)"

all: build push

build:
	@echo "Building image $(FULL_IMAGE_TAG)"
	docker build -t $(FULL_IMAGE_TAG) ./

push:
	docker push $(FULL_IMAGE_TAG)
