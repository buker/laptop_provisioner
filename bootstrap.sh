#!/bin/bash
user=`who|cut -d' ' -f1`
echo $user
sudo apt-get update
sudo apt-get install ansible git 
mkdir -p /home/$user/Workspace
cd /home/$user/Workspace 
git clone https://github.com/buker/laptop_provisioner.git
cd laptop_provisioner

