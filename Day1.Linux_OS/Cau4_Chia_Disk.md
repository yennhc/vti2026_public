
---

### Option A – Chuẩn production (best practice)

/boot      → 1 GB
/          → 20–30 GB
/var       → 20–100+ GB (tùy workload)
/home      → phần còn lại
swap       → 2–8 GB (hoặc theo RAM)

Giải thích:

/boot: chứa kernel → nhỏ là đủ
/: chỉ chứa OS → giữ gọn để tránh full disk
/var: cực kỳ quan trọng (logs, Docker, Ansible, Kafka…)
/home: dữ liệu user
swap: backup RAM

### Option B – DevOps / Lab

/boot      → 1 GB
/          → 30 GB
/var       → 50–200 GB
/home      → 20–50 GB
/opt       → 20–100 GB (optional)
swap       → 2–4 GB


Kafka
Elasticsearch
Minikube
Docker volumes

*** Tránh làm đầy /var hoặc /

### Option C – Đơn giản (VM nhỏ / lab nhanh)
/          → 40–60 GB
swap       → 2 GB

👉 Chỉ dùng khi:
Máy lab nhỏ
Không chạy production

