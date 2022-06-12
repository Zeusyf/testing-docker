#!/bin/bash
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
dpkg -i /root/uam-latest_amd64.deb 
./uam --pk E8B8118BDD82954C27A56D31FEAFDA455E123EB4DC8F4299C2CA0E7ADB5CC03F --no-ui
