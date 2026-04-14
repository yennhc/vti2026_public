
---

# 🧾 LINUX OS

## 🧠 1. Linux là gì?

* Linux = **Hệ điều hành mã nguồn mở** (Unix-like)
* Thành phần chính:

  * **Kernel** (nhân hệ điều hành)
* Ra đời:

  * 1991 – Linus Torvalds

👉 Lưu ý:
    
* Linux ≠ Ubuntu
* Ubuntu = 1 distro của Linux

---

## 🏗️ 2. Kiến trúc Linux

```
User → Shell → Kernel → Hardware
```

### Thành phần:

* **Kernel**

  * Quản lý CPU, RAM, Disk, Process
* **Shell**

  * Nhận lệnh user (CLI)
  * Ví dụ: bash
* **Applications**

  * nginx, mysql, ssh, docker…

👉 Flow:

```
User gõ lệnh → Shell → Kernel → Hardware → Output
```

---

## ⚖️ 3. Ưu / Nhược điểm

### ✅ Ưu điểm:

* Free & Open source
* Stable (server uptime cao)
* Security tốt
* Tùy biến cao
* Automation mạnh (script, ansible)

### ❌ Nhược điểm:

* Khó cho user mới
* Ít phần mềm desktop
* Cần CLI nhiều

---

## 📦 4. Distro Linux phổ biến

| Distro        | Use case           |
| ------------- | ------------------ |
| Debian        | Stable             |
| Ubuntu        | Beginner / Dev     |
| CentOS / RHEL | Enterprise         |
| Kali Linux    | Security / Pentest |

👉 Ghi nhớ nhanh:

* Dev → Ubuntu
* Server → CentOS / RHEL
* Hack → Kali

---

## 🌐 5. Vai trò Linux trong hệ thống

* Web Server (Nginx, Apache)
* Database Server
* Cloud (AWS, Azure)
* DevOps (Docker, Kubernetes)
* Network services (DNS, Proxy)

👉 Thực tế:

> 90% server chạy Linux

---

## 🆚 6. Linux vs Windows

| Tiêu chí      | Linux | Windows |
| ------------- | ----- | ------- |
| Cost          | Free  | Paid    |
| Server        | ⭐⭐⭐⭐⭐ | ⭐⭐      |
| GUI           | ⭐⭐    | ⭐⭐⭐⭐⭐   |
| Security      | ⭐⭐⭐⭐  | ⭐⭐⭐     |
| Customization | ⭐⭐⭐⭐⭐ | ⭐⭐      |

---

## 💿 7. Cài Ubuntu (Flow nhanh)

### Bước:

1. Download ISO
2. Tạo VM (VirtualBox / VMware)
3. Boot từ ISO
4. Cài đặt

### Option quan trọng:

* Language: English
* Installation:

  * Normal / Minimal
* Disk:

  * Erase disk (VM OK)
* User account
* Timezone

---

## 🧪 8. Lệnh cơ bản sau khi cài

```bash
whoami     # user hiện tại
pwd        # thư mục hiện tại
ls         # list file
uname -a   # thông tin hệ thống
```

---