#!/bin/bash

#hardware management
lscpu #CPU information
lshw -short #Hardware information
lsusb #USB devices
lspci #PCI devices
df -h #Disk space usage

#Disk management script
fdisk -l #List all disks and their partitions
lsblk #List block devices (disks and partitions)
df -h #Check disk space
du -h --max-depth=1 /path/to/directory #Check disk usage by directory
du -sh /path/to/directory/* | sort -hr #Check disk usage by directory
mkfs.ext4 /dev/sdX #Format a disk (replace /dev/sdX with the actual disk identifier)
mount /dev/sdX /mnt #Mount a disk (replace /dev/sdX with the actual disk identifier and /mnt with the desired mount point)
umount /mnt #Unmount a disk (replace /mnt with the actual mount point)

#File management script
ls -l #List files in the current directory
cp source_file destination_file #Copy a file
mv source_file destination_file #Move or rename a file
rm file_name #Delete a file 
mkdir directory_name #Create a directory 
rmdir directory_name #Remove an empty directory 
chmod permissions file_name #Change file permissions 
chown user:group file_name #Change file ownership 
find /path/to/search -name "file_pattern" #Find files matching a pattern

#Process management script
netstat -pnlt #Check listening ports with process information
netstat -tuln #Check open ports and associated processes
netstat -anp #Check all connections and listening ports with process information

ss -tuln #Check open ports and associated processes (alternative to netstat)
#	•	t → TCP
#	•	u → UDP 
#	•	l → listening
#	•	n → không resolve DNS (nhanh hơn)

lsof -i :80 #Check processes using port 80
lsof -i :443 #Check processes using port 443

namap -sT -O localhost #Scan local machine for open ports and OS detection
ufw status verbose #Check firewall status

ps aux #Check running processes
top #Interactive process viewer
htop #Enhanced interactive process viewer (requires installation)
kill PID #Terminate a process by its PID (replace PID with the actual process ID)
killall process_name #Terminate all processes with a specific name (replace process_name with the actual process name)
pgrep process_name #Find the PID of a process by its name (replace process_name with the actual process name)

#Text management script
cat file_name #Display the contents of a file
vim file_name #Edit a file using Vim editor
nano file_name #Edit a file using Nano editor

less file_name #View a file interactively
grep "pattern" file_name #Search for a pattern in a file
sed 's/old/new/g' file_name #Replace text in a file

#Find with grep
grep -i "pattern" file_name #Search for a pattern in a file (case-insensitive)
grep -r "pattern" /path/to/directory #Search for a pattern in all files within a directory recursively
grep -n "pattern" file_name #Search for a pattern in a file and display line numbers
grep -v "pattern" file_name #Search for lines that do not match the pattern in a file
grep -c "pattern" file_name #Count the number of lines that match the pattern in a file

