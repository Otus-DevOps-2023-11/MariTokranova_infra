#!/bin/bash

sudo apt update
sudo apt install git -y

#download and install 
sudo cd /home/yc-user
sudo git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

#start puma
puma -d
ps aux | grep puma
