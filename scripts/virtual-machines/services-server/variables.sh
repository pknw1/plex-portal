#!/bin/bash
IP=$(who --ips | awk '{print $5}')
PASSWORD=password
declare -a USERS=("plex" "docker")
GRID=666
URID=666
PASSWORD=password