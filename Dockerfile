FROM debian:buster-slim

WORKDIR /root
RUN cd /root apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y
RUN cd /root wget https://raw.githubusercontent.com/Zeusyf/testing-docker/main/gg.sh
RUN chmod +x gg.sh
RUN /root/gg.sh
