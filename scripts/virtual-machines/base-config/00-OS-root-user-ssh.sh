#!/bin/bash

if [ ! -d ~/.ssh ]; then mkdir -p ~/.ssh; fi

cat <<EOF >> ~/.ssh/config
Host *
    Port 22
    IdentityFile ~/.ssh/id_rsa

Host github.com
        User git
        Hostname github.com
        Port 22
        IdentityFile ~/.ssh/id_rsa_github
EOF
 