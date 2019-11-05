#FROM ubuntu:19.04
FROM alpine:latest
MAINTAINER yoloClin <yoloClin@github.com>

#ENV DEBIAN_FRONTEND=noninteractive
RUN apk update && \
        apk add --no-cache icecast sudo bash
#RUN apt-get update -qq && \
#    apt-get upgrade -qqy && \
#    apt-get --no-cache install -y --no-install-recommends icecast2

COPY icecast.xml.template /etc/icecast.xml.template
COPY run.sh /home/icecast/

USER icecast
USER root

ENTRYPOINT ["/bin/bash", "/home/icecast/run.sh"]

EXPOSE 8000
