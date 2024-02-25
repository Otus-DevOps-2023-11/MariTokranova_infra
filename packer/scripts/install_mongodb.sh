#!/bin/bash
apt update
sleep 30
apt install mongodb -y
systemctl status mongodb
systemctl enable mongodb
