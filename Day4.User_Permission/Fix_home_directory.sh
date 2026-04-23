#!/bin/bash

#Create user demo1
sudo useradd -m demo1

#Fix existing user
sudo mkdir -p /home/demo1
sudo chown demo1:demo1 /home/demo1
sudo chmod 700 /home/demo1

#Production
useradd -m -s /bin/bash demo1

