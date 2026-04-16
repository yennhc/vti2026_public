
---
# Khi nào cần upgarde kernel

- Có lỗ hỏng bảo mật nghiêm trọng (Critical CVE)
- Cần hổ trợ hardware mới 
- Bug liên quan đến production
- Tính năng mới 
# Các chiến lược upgrade kernel 

- Upgrade truyền thống: install kernel mới --> reboot system (Có downtime)

- Live patching (zero downtime) 
    - kpatch (Red hat)
    - ksplice (Oracle)
    - livepatch (Ubuntu)

- Rolling upgrade (Cluster)
    - upgrade theo node

# Quy trình upgarde kernel an toàn 
- Kiểm tra hệ thống hiện tại
```bash
    uname -r
    cat /etc/os-release
```
- Review changelog kernel
- Backup & Snapshot
- Test trước khi upgrade (app, network, disk)
- Install kernel
```bash
    sudo apt update && sudo apt install linux-image-generic
```
- Giữ kernel cũ phòng hờ trường hợp kernel mới gặp lỗi. 
```bash
    awk -F\' '$1=="menuentry " {print $2}' /boot/grub/grub.cfg
```

