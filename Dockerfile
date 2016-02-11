FROM jenkins

USER root

RUN apt-get update && apt-get install -y lxc

ENV DOCKER_COMPOSE_VERSION 1.6.0
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

