#!/bin/bash
export P=$(who --ips | awk '{print $5}')
export PASSWORD=password
declare -a USERS=("plex" "docker")
export GRID=666
export URID=666
