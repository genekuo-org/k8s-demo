-include Makefile.overrides

IMAGE ?= kiada:0.2
PREFIX="genedocker/"
FULL_IMAGE_TAG = "$(PREFIX)$(IMAGE)"

all: build push

build:
	@echo "Building image $(FULL_IMAGE_TAG)"
	docker build -t $(FULL_IMAGE_TAG) ./

push:
	docker push $(FULL_IMAGE_TAG)

demo-run:
	make build push && kubectl delete po kiada --force --grace-period 0 ; kubectl apply -f ../pod.kiada.yaml && kubectl wait --for=condition=Ready pod/kiada && kubectl port-forward kiada 8080
