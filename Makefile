.PHONY: dev
toolbox-cso-t4c-dev:
	buildah bud -t toolbox-cso-t4c-dev cso-t4c-dev
build_docker:
	docker build -t toolbox-cso-t4c-dev cso-t4c-dev