# Day 12 - Dockerfile Basics

## Mục tiêu
- hiểu Dockerfile
- build image từ Dockerfile
- chạy container từ image
- hiểu từng instruction

---

# Dockerfile là gì

Dockerfile là file chứa các instruction để build Docker image.

---

# Các lệnh cơ bản

## FROM

Chọn base image.

Ví dụ:

FROM node:18

---

## WORKDIR

Đặt thư mục làm việc trong container.

WORKDIR /app

Tất cả lệnh sau sẽ chạy trong thư mục này.

---

## COPY

Copy file từ host vào image.

COPY . .

---

## RUN

Chạy command trong quá trình build image.

RUN npm install

---

## EXPOSE

Khai báo port ứng dụng sử dụng.

EXPOSE 3000

Lưu ý:
- không tự mở port ra host

---

## CMD

Lệnh chạy khi container start.

CMD ["node", "app.js"]

---

# Quy trình Docker

1. Viết Dockerfile
2. Build image

docker build -t my-app .

3. Run container

docker run -p 3000:3000 my-app

---

# COPY vs Volume

## COPY
- file được copy vào image
- không thay đổi sau khi build

## Volume
- mount từ host vào container
- thay đổi thấy ngay
- dùng cho dev hoặc config

---

# Điều học được

- Dockerfile giúp build image
- image dùng để tạo container
- WORKDIR giúp tránh lỗi path
- CMD là entrypoint mặc định
- EXPOSE không mở port
- COPY khác volume

