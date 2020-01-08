FROM ruby:2.6
MAINTAINER Ruby on Racetracks

RUN ruby -v && cat /etc/os-release && \
    apt-get update && apt-get upgrade && \
    apt-get install -y nodejs bash && \
    adduser --disabled-password --gecos '' winner && \
    mkdir /home/winner/neutrino && \
    chown -R 1000:1000 /home/winner/neutrino

USER winner

WORKDIR /home/winner/neutrino
