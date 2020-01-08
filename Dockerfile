FROM ruby:2.6
MAINTAINER Ruby on Racetracks

RUN ruby -v && cat /etc/os-release && \
    apt-get update && apt-get upgrade && \
    apt-get install -y nodejs bash && \
    adduser --disabled-password --gecos '' winner

USER winner

WORKDIR /home/winner/neutrino
