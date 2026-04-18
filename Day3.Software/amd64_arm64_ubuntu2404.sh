#!/bin/bash

# Check environment
dpkg --print-architecture
uname -m

#Add amd64 architecture
sudo dpkg --add-architecture amd64
sudo apt install qemu-system-x86 qemu-user qemu-user-static binfmt-support

#Upadte repositories
sudo tee -a /etc/apt/sources.list > /dev/null <<'EOF'

# ARM64 repo
deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports noble main restricted universe multiverse
deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports noble-updates main restricted universe multiverse
deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports noble-security main restricted universe multiverse

# AMD64 repo
deb [arch=amd64] http://archive.ubuntu.com/ubuntu noble main restricted universe multiverse
deb [arch=amd64] http://archive.ubuntu.com/ubuntu noble-updates main restricted universe multiverse
deb [arch=amd64] http://archive.ubuntu.com/ubuntu noble-security main restricted universe multiverse
EOF

# Update package lists
sudo apt update

#Install libc6 for amd64
sudo apt install libc6:amd64 -y

#Verify installation
dpkg -l | grep libc6

#Setup QEMU for AMD64 emulation (Cài QEMU user mode để chạy ứng dụng AMD64 trên ARM64)
sudo apt install qemu-user-static -y
sudo apt install qemu-user qemu-user-binfmt -y
sudo update-binfmts --enable qemu-x86_64

#Verify binfmt configuration
update-binfmts --display | grep amd64

#Test running an AMD64 application (ví dụ: chạy lệnh `uname -m` trong môi trường AMD64)
qemu-x86_64 uname -m

#Install an AMD64 application (ví dụ: cài đặt busybox cho kiến trúc AMD64)
sudo apt install busybox:amd64

#Test running the AMD64 application
qemu-x86_64 busybox --help

#Run an AMD64 application directly (ví dụ: chạy busybox mà không cần qemu-x86_64)
busybox --help

