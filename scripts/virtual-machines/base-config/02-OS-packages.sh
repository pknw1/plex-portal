#!/bin/bash

# fail2ban	blocks IPs that have multiple login attempts
# xrdp		allows us to access an X11 desktop
# xfce4		X11 desktop packages to allow remote access
# shellinabox	SSH via a web browser
# encfs
# NFS
# Git
# wget/curl
export DEBIAN_FRONTEND=noninteractive
sudo aptitude install -y --assume-yes encfs git wget certbot nfs-kernel-server nfs-common xfce4 xfce4-goodies xfdesktop4 xrdp apt-transport-https ca-certificates curl gnupg-agent software-properties-common fail2ban
