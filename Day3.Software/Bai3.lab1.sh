#!/bin/sh
#Author: Yen Nguyen

#Assignment: Lab 1 - Software Installation and Management
#1. Install software by apt package manager
sudo apt update
sudo apt install -y curl wget git vim

#2. Install software by snap
sudo snap install --classic code    

#3. Install software by dpkg
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install -y  # Fix dependencies if needed    
dpkg -l | grep google-chrome

#4. Install software by compiling from source
#Remove previous version of htop if installed
sudo apt purge -y htop
#Example: Install htop from source
#Install build tools and dependencies
sudo apt update
sudo apt install -y build-essential \
autoconf automake libtool pkg-config \
libncursesw5-dev

wget https://github.com/htop-dev/htop/archive/refs/tags/3.3.0.tar.gz
#wget https://github.com/htop-dev/htop/archive/refs/tags/3.0.5.tar.gz
tar -xzf 3.3.0.tar.gz
cd  cd htop-3.3.0
./autogen.sh
./configure
make
#make -j$(nproc)

sudo make install
htop --version


#Show package information
apt show curl
apt show wget
apt show git
apt show vim

#B. Remove software 

#Remove software by apt package manager
sudo apt remove -y curl wget git vim 
sudo apt autoremove -y # Remove unused dependencies

#Verify removal
curl --version || echo "curl removed"
wget --version || echo "wget removed"
git --version || echo "git removed"
vim --version || echo "vim removed"

#Remove software by snap
sudo snap remove code

#Remove software by dpkg
sudo dpkg -r google-chrome-stable

#Remove software by compiling from source
#Example: Remove htop installed from source
sudo make uninstall 

#C. Search for software packages
apt search htop
apt search curl
apt search git
apt search vim


