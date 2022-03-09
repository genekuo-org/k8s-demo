-include Makefile.overrides

IMAGE ?= kiada:0.3
FULL_IMAGE_TAG = "$(PREFIX)$(IMAGE)"

all: image push

image:
	@echo "Building image $(FULL_IMAGE_TAG)"
	docker build -t $(FULL_IMAGE_TAG) ./

push:
	docker push $(FULL_IMAGE_TAG)

demo-run:
	PREFIX=genedocker/ make build push && k delete po kiada --force --grace-period 0 ; k apply -f ../../4-pods/kiada.pod.yaml && k wait --for=condition=Ready pod/kiada && k port-forward kiada 8080
