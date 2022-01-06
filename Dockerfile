FROM ubuntu:18.04

ENV HOME /home/ubuntu
ENV LUIGI_CONFIG_PATH $HOME/datascience/config


RUN apt-get update && yes|apt-get upgrade

RUN apt-get -y install wget bzip2 python3-pip python3-dev vim sudo \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt-get update --fix-missing

COPY . $HOME/
RUN pip install -r $HOME/requirements.txt

RUN export PATH="$PATH:/usr/local/bin/python"
