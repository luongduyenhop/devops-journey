# Day 9 - Docker Logs and Debug

## Mục tiêu
- hiểu cách debug container
- xem logs container
- truy cập container đang chạy
- chạy command trong container

---

## Docker Logs

Khi container chạy ở chế độ nền (detached mode), output không hiển thị trên terminal.

Để xem log của container:

docker logs <container_name>

Ví dụ:

docker logs nginx-debug

Xem log realtime:

docker logs -f nginx-debug

---

## Docker Exec

Dùng để chạy lệnh trong container đang chạy.

docker exec -it <container> bash

Ví dụ:

docker exec -it nginx-debug bash

Nếu container không có bash thì dùng:

docker exec -it nginx-debug sh

---

## Chạy command trực tiếp trong container

docker exec <container> <command>

Ví dụ:

docker exec nginx-debug ls
docker exec nginx-debug ps aux

---

## Bash vs Sh

Không phải image nào cũng có bash.

Một số image nhỏ chỉ có shell `sh`.

Ví dụ:
- alpine
- busybox

Nếu bash không tồn tại thì dùng sh.

---

## Lệnh đã dùng hôm nay

docker logs nginx-debug
docker logs -f nginx-debug
docker exec -it nginx-debug bash
docker exec nginx-debug sh
docker exec nginx-debug ls
docker exec nginx-debug ps aux

---

## Những lỗi gặp phải

### 1. Container chạy nhưng web không truy cập được
Nguyên nhân: chưa map port

docker run -d -p 8080:80 nginx

---

### 2. Container thoát ngay
Nguyên nhân: không có process chính

docker run -it ubuntu bash

---

### 3. bash not found
Nguyên nhân: image không có bash

docker exec -it container sh

---

## Điều học được

- docker logs dùng để debug container chạy nền
- docker exec dùng để chạy lệnh trong container
- bash không phải image nào cũng có
- container lifecycle phụ thuộc process chính
