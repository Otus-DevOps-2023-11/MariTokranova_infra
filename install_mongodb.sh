#!/bin/bash

sudo apt update
sudo apt install mongodb -y
#check status
sudo systemctl status mongodb

#start
sudo systemctl start mongodb
sudo systemctl status mongodb
sudo systemctl enable mongodb
