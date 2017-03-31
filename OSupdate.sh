#!/bin/bash

sudo netselect-apt -s -n -t 15
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo mv sources.list /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade -y
