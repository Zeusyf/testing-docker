FROM ubuntu:focal

RUN apt-get -y install sudo
RUN sudo lscpu
RUN sudo whoami
