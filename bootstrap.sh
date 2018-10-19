#!/bin/bash
user=`who|cut -d' ' -f1`
echo $user
apt-get update -yqq
apt-get install -yqq ansible git 
if [ ! -d "/home/$user/Workspace/laptop_provisioner" ]; then
    sudo -u $user mkdir -p /home/$user/Workspace
    cd /home/$user/Workspace 
    sudo -u $user git clone https://github.com/buker/laptop_provisioner.git
    cd laptop_provisioner
else 
    cd /home/$user/Workspace/laptop_provisioner
    sudo -u $user git fetch
    sudo -u $user git checkout master
    sudo -u $user git pull
fi 
ansible-playbook playbook.yaml
