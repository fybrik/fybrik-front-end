ROOT_DIR := .
include $(ROOT_DIR)/Makefile.env
include $(ROOT_DIR)/hack/make-rules/tools.mk
DOCKER_NAME ?= datauserclient
DOCKER_TAGNAME ?= latest
DOCKER_FILE = Dockerfile
DOCKER_CONTEXT = .
include $(ROOT_DIR)/hack/make-rules/docker.mk


.PHONY: docker-build
docker-build:
	docker build . -t ${IMG} -f Dockerfile