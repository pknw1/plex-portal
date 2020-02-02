#!/bin/bash
source ./variables.sh

./00-OS-root-user-ssh.sh
./01-OS-update.sh
./02-OS-packages.sh
./03-OS-whitelist-your-home-ip.sh
./04-OS-etc-skel.sh
./05-OS-groups-and-users.sh
./06-OS-fail2ban-config.sh
./07-OS-shellinabox-config.sh
./08-OS-xrdp-config.sh
./09-OS-rclone.sh
./10-OS-encfs-config.sh