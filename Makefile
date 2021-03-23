.PHONY: dev
toolbox-fedora-cso-t4c-dev:
	buildah bud -t toolbox-cso-t4c-dev -f cso-t4c-dev/Dockerfile.fedora cso-t4c-dev
toolbox-ubuntu-cso-t4c-dev:
	buildah bud -t toolbox-ubuntu-cso-t4c-dev -f cso-t4c-dev/Dockerfile.ubuntu cso-t4c-dev