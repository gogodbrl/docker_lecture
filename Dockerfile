FROM ubuntu
MAINTAINER gogodbrl

RUN apt update -y
RUN apt install -y curl
RUN apt install -y net-tools
RUN apt install -y tree

RUN mkdir /xxx
