#!/bin/bash

#hardware management
lscpu #CPU information
lshw -short #Hardware information
lsblk #Block devices (disks and partitions)
lsusb #USB devices
lspci #PCI devices
free -h #Memory usage
df -h #Disk space usage
uname -a #Kernel and system information
uptime #System uptime and load average
dmesg | tail #Kernel messages   



#############Disk management script################
#Check disk space
df -h
#Check disk usage by directory
du -h --max-depth=1 /path/to/directory
du -sh /path/to/directory/* | sort -hr

#List all disks and their partitions
lsblk
fdisk list

#############Memory management script################
#Check memory usage
free -h


#############CPU management script################
top -b -n1 | grep "Cpu(s)"

#############Process management script################
#Check running processes
ps aux | sort -nrk 3,3 | head -n 10 # Sort by CPU usage and show top 10 processes
ps aux | sort -nrk 4,4 | head -n 10 # Sort by memory usage and show top 10 processes
sudo lsof -i :80 #Check processes using port 80
netstat -tuln #Check open ports and associated processes
netstat -anp   #Check all connections and listening ports with process information
netstat -pnlt #Check listening ports with process information
ss -tuln 
#	•	t → TCP
#	•	u → UDP
#	•	l → listening
#	•	n → không resolve DNS (nhanh hơn)

#Check network connections
sudo apt update && sudo apt install -y net-tools  # Install net-tools if not already installed
sudo apt update && sudo apt install -y nmap  # Install nmap for network scanning
ufw status verbose  # Check firewall status
sudo nmap -sT -O localhost  # Scan local machine for open ports and OS detection    


