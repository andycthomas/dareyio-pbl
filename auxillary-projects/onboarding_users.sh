#!/bin/bash

function add_user {
if id $1 >/dev/null 2>&1; then
    echo "user $1 already exists"
else
    echo "create them"

     # create the user with a home directoru
    sudo useradd -m $1

     # add them to the dveelopers group.
    sudo usermod -a -G developers $1

    # give them an .ssh directory, make sure that it is owneed by them and has the correct permssions
    sudo mkdir -p  /home/$1/.ssh

     # give them an authorized_keys file
    sudo touch /home/$1/.ssh/authorized_keys
    sudo chmod 777  /home/$1/.ssh/authorized_keys

    # add our public key into their authorized keys file
    sudo cat $HOME/.ssh/id_rsa.pub  > /home/$1/.ssh/authorized_keys

    # set ownership and permissions for the new user's  .ssh directory, and authorized_keys file
    sudo chown -R $1 /home/$1/.ssh
    sudo chgrp -R $1 /home/$1/.ssh
    sudo chmod 700  /home/$1/.ssh
    sudo chmod 644  /home/$1/.ssh/authorized_keys

fi
}

while read -r line;  do
    add_user $line
done < $1