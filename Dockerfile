FROM alpine:3.7
MAINTAINER Ian Neubert <ian@ianneubert.com>

RUN mkdir ~/repo
RUN apk --update add \ 
      less \
      groff \
      perl \
      python \
      py-pip \
      jq \
      curl \
      bash \
      make \
      docker \
      git \
      openssh-client && \
      pip install --upgrade awscli s3cmd docker-compose && \
      mkdir /root/.aws

WORKDIR ~/repo
