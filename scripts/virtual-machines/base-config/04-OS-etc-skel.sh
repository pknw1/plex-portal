#!/bin/bash
sudo mkdir -p /etc/skel/.ssh
sudo cp ~/.ssh/authorized_keys /etc/skel/.ssh/
echo ENCFS6_CONFIG=/.encfs6.xml >> /etc/skel/.profile

cat <<EOF > /etc/skel/.ssh/config
Host *
    Port 22
    IdentityFile ~/.ssh/id_rsa

Host github.com
        User git
        Hostname github.com
        Port 22
        IdentityFile ~/.ssh/id_rsa_github

EOF