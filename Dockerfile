FROM nvidia/cuda:9.1-devel-ubuntu16.04

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get upgrade -y

RUN apt-get install -y git-all vim htop sudo
RUN apt-get install python2.7 python-pip -y

RUN git clone https://github.com/torch/distro.git ~/torch --recursive
RUN rm ~/torch/install-deps
COPY ./install-deps ~/torch/
RUN cd ~/torch && bash install-deps && ./install.sh

WORKDIR /root/

RUN git clone https://github.com/amoudgl/funnybot.git