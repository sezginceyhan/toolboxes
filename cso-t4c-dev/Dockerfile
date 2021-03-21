FROM docker.io/library/ubuntu:20.10 as base
ARG BUILD_DATE
ARG IMAGE_VERSION

LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.authors="Sezgin Ceyhan" \
      org.opencontainers.image.url="https://github.com/sezginceyhan/toolboxes" \
      org.opencontainers.image.documentation="https://github.com/sezginceyhan/toolboxes" \
      org.opencontainers.image.source="https://github.com/sezginceyhan/toolboxes" \
      org.opencontainers.image.version="$IMAGE_VERSION" \
      org.opencontainers.image.title="Cloud development image" \
      org.opencontainers.image.description="Development environment"

COPY scripts/base /tmp/scripts/base

WORKDIR /tmp/scripts/base

RUN /tmp/scripts/base/install


FROM base as apps

COPY scripts/apps /tmp/scripts/apps

WORKDIR /tmp/scripts/apps

RUN /tmp/scripts/apps/install \
    && rm -rf /tmp/scripts \
    && dnf clean all
 
#CMD [ "/bin/bash", "-c", "zsh" ]
CMD [ "/bin/zsh" ]
