FROM ubuntu:latest
MAINTAINER rusodavid@gmail.com

ARG CONTAINER_LANG="${CONTAINER_LANG:-'es_ES:es'}"
ARG CONTAINER_LOCALE="${CONTAINER_LOCALE:-'es_ES.UTF-8'}"

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Madrid" apt-get install -y tzdata

# Localization
RUN apt-get -y install locales && \
    locale-gen "${CONTAINER_LOCALE}"


ENV LANG "${CONTAINER_LOCALE}"
ENV LANGUAGE "${CONTAINER_LANG}"
ENV LC_ALL "${CONTAINER_LOCALE}"


