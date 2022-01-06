FROM ubuntu:18.04

RUN apt-get update && yes|apt-get upgrade

RUN apt-get -y install wget bzip2 python3-pip python3-dev vim sudo \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt-get update

RUN export PATH="$PATH:/usr/local/bin/python"
