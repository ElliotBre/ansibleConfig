#!/bin/bash
ssh-key=$1
script-location=$0

echo "Adding ansible user\n"
sudo adduser --home /home/ansible ansible

echo "Adding key location\n"
sudo mkdir /home/ansible/.ssh
sudo touch /home/ansible/.ssh/authorized_keys
sudo chown ansible /home/ansible/.ssh/authorized_keys

echo "Adding ssh-key\n"
echo "\n${ssh-key}" >> /home/ansible/.ssh

echo "Creating config file for ssh"
sudo touch /home/ansible/.ssh/config
sudo chown ansible /home/ansible/.ssh/authorized_keys
chmod 400 /home/ansible/.ssh/authorized_keys

echo "fin :)"

exit 0
