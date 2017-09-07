FROM ubuntu
MAINTAINER eheimwbn@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
      apt-get upgrade -y && \
      apt-get install -y --no-install-recommends \
        --no-install-suggests \
        software-properties-common && \
        apt-add-repository ppa:ansible/ansible && \
        add-apt-repository ppa:jonathonf/python-2.7 && \
        apt-get update && apt-get -y upgrade && \
        apt-get -y install ansible python2.7
