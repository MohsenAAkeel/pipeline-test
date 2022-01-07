FROM ubuntu:18.04

ENV HOME /home/ubuntu
ENV LUIGI_CONFIG_PATH $HOME/pipeline-test/config


RUN apt-get update && yes|apt-get upgrade

RUN apt-get -y install python3 python3-pip
RUN apt-get update --fix-missing

COPY . $HOME/pipeline-test/

RUN pip3 install -r $HOME/pipeline-test/requirements.txt
