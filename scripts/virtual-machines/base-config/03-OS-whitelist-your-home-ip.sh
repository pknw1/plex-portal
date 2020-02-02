#!/bin/bash
IP=$(who --ips | awk '{print $5}')
for i in $IP; do

	sudo iptables -A INPUT -s "${IP}" -j ACCEPT
	sudo iptables -A OUTPUT -s "${IP}" -j ACCEPT
	sudo ufw allow from "${IP}"
done