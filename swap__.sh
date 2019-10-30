#!/bin/bash

# to execute from url https://stackoverflow.com/questions/5735666/execute-bash-script-from-url 

mem_size="1G"


if [[ $1 ]] ;
   then  mem_size="$1"
fi

sudo fallocate -l $mem_size /swapfile

sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo free -m
#sudo swapon --show

#sudo swapon --show
