
# Day 10 - Docker Port Mapping and Volume

## Mục tiêu
- hiểu port mapping
- hiểu volume / bind mount
- hiểu sự khác nhau giữa COPY và volume

---

# Port Mapping

Port mapping là việc ánh xạ port của container ra port của host để có thể truy cập container từ bên ngoài.

Cú pháp:
-p <host_port>:<container_port>


Ví dụ:


docker run -d -p 8080:80 nginx


Ý nghĩa:


host port 8080 → container port 80


Khi truy cập:


http://localhost:8080


request sẽ được chuyển vào container nginx.

---

# Vì sao container chạy nhưng không truy cập được

Container có network riêng.

Nếu không map port thì port bên trong container không thể truy cập từ host.

Muốn truy cập từ host phải dùng:


-p host_port:container_port


---

# Docker Volume / Bind Mount

Volume hoặc bind mount cho phép container sử dụng file từ máy host.

Ví dụ:


docker run -d -p 8081:80
-v ./html:/usr/share/nginx/html
nginx


Ý nghĩa:


./html (host) → /usr/share/nginx/html (container)


Nếu file trên host thay đổi thì container sẽ thấy thay đổi ngay.

---

# Bind Mount vs COPY

### COPY

Trong Dockerfile:


COPY index.html /usr/share/nginx/html


File được copy vào image.

Sau khi build image, nếu file thay đổi thì cần build lại image.

---

### Bind Mount


-v ./html:/usr/share/nginx/html


Container đọc file trực tiếp từ host.

Nếu file host thay đổi thì container thấy ngay.

---

# Lệnh đã dùng


docker run -d -p 8080:80 nginx
docker ps
curl localhost:8080


Volume mount:


docker run -d -p 8081:80
-v ./html:/usr/share/nginx/html
nginx


---

# Điều học được

- container port không tự mở ra host
- phải dùng port mapping
- volume giúp chia sẻ dữ liệu giữa host và container
- bind mount giúp cập nhật file ngay lập tức
