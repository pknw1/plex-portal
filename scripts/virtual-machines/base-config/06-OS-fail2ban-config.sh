#!/bin/bash
IP=$(who --ips | awk '{print $5}')

cat /etc/fail2ban/fail2ban.conf | grep -v "#" > /etc/fail2ban/jail.local
touch /var/log/auth-ssh.log
 
cat <<EOF >> /etc/fail2ban/jail.local
[DEFAULT]
ignoreip = 127.0.0.1/8 $IP
maxretry=6
bantime=2678400

[sshd]
enabled = true
logpath  = /var/log/auth-ssh.log
EOF