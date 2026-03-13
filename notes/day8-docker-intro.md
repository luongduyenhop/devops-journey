# Day 8 - Docker Basics

## Mục tiêu hôm nay
- hiểu Docker dùng để làm gì
- phân biệt image và container
- chạy container đầu tiên
- biết xem container và image

## Docker là gì
Docker là công cụ giúp đóng gói ứng dụng cùng môi trường chạy để ứng dụng có thể chạy nhất quán trên nhiều môi trường khác nhau.

## Vì sao DevOps cần Docker
- chuẩn hóa môi trường chạy
- dễ deploy
- dễ test
- dễ debug
- thuận tiện cho CI/CD

## Docker Image là gì
Docker image là một package read-only chứa:
- application code
- runtime
- dependencies
- environment cần thiết

Image được dùng làm khuôn mẫu để tạo container.

Ghi nhớ:
- Image = template / bản thiết kế
- Image không phải chương trình đang chạy

## Docker Container là gì
Docker container là instance được tạo từ image để chạy ứng dụng trong môi trường cô lập.

Container có vòng đời:
- created
- running
- stopped
- removed

Ghi nhớ:
- Container = instance đang chạy hoặc đã được tạo từ image

## Lệnh đã dùng

### Kiểm tra Docker
```bash
docker --version
docker info
