#!/bin/bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential

#check version
ruby -v
bundler -v
