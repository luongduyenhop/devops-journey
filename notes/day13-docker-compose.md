# Day 13 - Docker Compose

## Mục tiêu
- hiểu Docker Compose
- chạy multi-container system
- quản lý service bằng file cấu hình

---

# Docker Compose là gì

Docker Compose là công cụ giúp định nghĩa và chạy nhiều container bằng một file cấu hình (`docker-compose.yml`).

---

# Vì sao cần Docker Compose

So với docker run:

- chạy nhiều container cùng lúc
- không cần viết lệnh dài
- quản lý system dễ hơn
- dễ tái sử dụng (reproducible)

---

# Service là gì

Service là một container được định nghĩa trong docker-compose.yml.

Một service bao gồm:

- image hoặc build
- ports
- volumes
- environment
- network

Ví dụ:

services:
  web:
    image: nginx

---

# Lệnh cơ bản

## Chạy compose

docker compose up -d

→ build và start tất cả services

---

## Dừng compose

docker compose down

→ stop và xóa container + network

---

## Xem logs

docker compose logs

docker compose logs -f

→ xem log tất cả services

---

# Khi nào dùng Docker Compose

- local development
- chạy multi-container app
- demo hệ thống
- test integration

---

# Compose trong production

- dùng tốt cho project nhỏ
- production lớn thường dùng:
  - Kubernetes
  - ECS
  - Docker Swarm

---

# Điều học được

- Compose giúp quản lý nhiều container
- service là định nghĩa container
- dễ build system bằng code
- logs giúp debug nhiều service cùng lúc
