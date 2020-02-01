#!/bin/bash
source ./variables.sh

groupadd -g $GRID test

for user in "${USERS[@]}"
do
                sudo useradd -b /home -m -g $GRID -o -u $URID -s /bin/bash -p $PASSWORD $user
                sudo echo   $user' ALL=(ALL) NOPASSWD:ALL'  > /etc/sudoers.d/"${user}"
done

             