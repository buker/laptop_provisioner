#!/bin/bash
user=`who|cut -d' ' -f1`
echo $user
sudo apt-get update -yqq
sudo apt-get install -yqq ansible git 
sudo -u $user kdir -p /home/$user/Workspace
cd /home/$user/Workspace 
sudo -u $user git clone https://github.com/buker/laptop_provisioner.git
cd laptop_provisioner

