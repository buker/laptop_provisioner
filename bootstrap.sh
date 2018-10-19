#!/bin/bash
user=`who|cut -d' ' -f1`
echo $user
sudo apt-get update -yqq
sudo apt-get install -yqq ansible git 
if [ ! -d "/home/$user/Workspace" ]; then
    sudo -u $user mkdir -p /home/$user/Workspace
    cd /home/$user/Workspace 
    sudo -u $user git clone https://github.com/buker/laptop_provisioner.git
    cd laptop_provisioner
    sudo ansible-playbook -K playbook.yml
fi 
