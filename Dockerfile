FROM ubuntu:18.04

ENV HOME /home/ubuntu
ENV LUIGI_CONFIG_PATH $HOME/pipeline-test/config


RUN apt-get update && yes|apt-get upgrade

RUN apt-get install -y software-properties-common  # required for add-apt-repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
RUN apt-get update

RUN apt-get -y install wget bzip2 python3-pip python3-dev vim sudo \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt-get update --fix-missing

COPY . $HOME/pipeline-test/

RUN pip3 install -r $HOME/pipeline-test/requirements.txt

# complete
