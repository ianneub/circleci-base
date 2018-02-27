FROM alpine:3.7
MAINTAINER Ian Neubert <ian@ianneubert.com>

RUN mkdir ~/repo
RUN apk --update add \ 
      less \
      groff \
      python \
      py-pip \
      jq \
      curl \
      bash \
      make \
      docker && \
      pip install --upgrade awscli s3cmd && \
      mkdir /root/.aws

WORKDIR ~/repo
