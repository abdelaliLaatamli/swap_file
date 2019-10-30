#!/bin/bash

# to execute from url https://stackoverflow.com/questions/5735666/execute-bash-script-from-url 

sudo fallocate -l 1G /swapfile

sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576

sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo free -m
#sudo swapon --show
