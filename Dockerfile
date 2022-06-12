FROM ubuntu:focal

WORKDIR /root
RUN cd /root && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /root/uam-latest_amd64.deb
WORKDIR /root/uam
RUN ls
