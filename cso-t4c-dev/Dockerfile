FROM registry.fedoraproject.org/f33/fedora-toolbox:33

ARG BUILD_DATE
ARG IMAGE_VERSION

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="Matthias Preu" \
      org.opencontainers.image.url="https://github.com/mpreu/toolboxes" \
      org.opencontainers.image.documentation="https://github.com/mpreu/toolboxes" \
      org.opencontainers.image.source="https://github.com/mpreu/toolboxes" \
      org.opencontainers.image.version="$IMAGE_VERSION" \
      org.opencontainers.image.title="T4C Cloud development image" \
      org.opencontainers.image.description="Development environment for Kubernetes and Red Hat Openshift workloads"

COPY scripts/base /tmp/scripts/base

WORKDIR /tmp/scripts/base

RUN /tmp/scripts/base/install

COPY scripts/apps /tmp/scripts/apps

WORKDIR /tmp/scripts/apps

RUN /tmp/scripts/apps/install \
    && rm -rf /tmp/scripts \
    && dnf clean all
 
#CMD [ "/bin/bash", "-c", "zsh" ]
CMD [ "/bin/zsh" ]
