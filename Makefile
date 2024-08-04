VERSION ?= latest
NAMESPACE ?= havlasme
IMAGENAME ?= debian11-systemd-ansible

PODMAN = @podman

.PHONY: build
build:
	$(PODMAN) build -t $(NAMESPACE)/$(IMAGENAME):$(VERSION) .
