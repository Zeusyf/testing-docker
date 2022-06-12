FROM debian:buster-slim

WORKDIR /root

RUN apt install wget libglib2.0-0 netbase -y
RUN wget https://raw.githubusercontent.com/Zeusyf/testing-docker/main/gg.sh
RUN chmod +x gg.sh
RUN /root/gg.sh
