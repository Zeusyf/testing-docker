FROM debian:buster-slim

WORKDIR /root
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
RUN apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /root/uam-latest_amd64.deb
RUN chmod +x /root/uam
CMD /root/uam --pk E8B8118BDD82954C27A56D31FEAFDA455E123EB4DC8F4299C2CA0E7ADB5CC03F --no-u

