#FROM ubuntu:19.04
FROM alpine:latest
MAINTAINER yoloClin <yoloClin@github.com>

RUN apk update && \
        apk add --no-cache icecast sudo bash

COPY run.sh /run.sh
COPY icecast.xml.template /etc/icecast.xml.template

USER icecast
USER root

CMD ["/bin/bash", "-c", "/run.sh"]

EXPOSE 8000
