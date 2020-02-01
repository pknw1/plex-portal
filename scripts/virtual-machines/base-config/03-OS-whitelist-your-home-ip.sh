#!/bin/bash
source ./variables.sh

sudo iptables -A INPUT -s "${IP}" -j ACCEPT
sudo iptables -A OUTPUT -s "${IP}" -j ACCEPT
sudo ufw allow from "${IP}"