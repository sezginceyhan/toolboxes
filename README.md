# Toolboxes
Pre-configured custom images for the [containers/toolbox](https://github.com/containers/toolbox) project.

## How to use?
Images are published in the Github registry and can be used e.g. with:

```bash
# Create toolbox from image
toolbox create --container dev --image ghcr.io/mpreu/toolbox-cso-t4c-dev:latest
# Enter created toolbox
toolbox enter dev
```

## Available images
The following images are available:

- `toolbox-cso-t4c-dev`
  - Basic development environment with focus on `Kubernetes`, `Red Hat Openshift`, `Go`-based software development
  - Includes:
    - `kubectl`
    - `ocp`
    - `tekton`
    - `helm`
    - `go`
    - `vscode`