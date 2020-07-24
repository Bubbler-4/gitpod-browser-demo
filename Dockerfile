FROM gitpod/workspace-full-vnc:latest

USER root
# install dependencies
RUN apt-get update \
    && apt-get install -y firefox matchbox twm libnet-vnc-perl \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
