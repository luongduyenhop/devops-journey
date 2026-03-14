# Day 11 - Docker Network

## Mục tiêu
- hiểu Docker network
- hiểu cách container giao tiếp với nhau
- hiểu bridge network
- dùng docker network inspect để debug

---

# Docker Network

Docker network cho phép các container giao tiếp với nhau thông qua mạng ảo.

Docker tạo network riêng cho container để tách biệt với host system.

---

# Bridge Network

Bridge network là network mặc định của Docker.

Các container trong cùng bridge network có thể giao tiếp với nhau.

Ví dụ tạo network:

docker network create --driver bridge mynetwork

Chạy container trong network:

docker run -d --name nginx-c1 --network mynetwork nginx
docker run -d --name nginx-c2 --network mynetwork nginx

---

# Container Communication

Container trong cùng network có thể gọi nhau bằng tên container.

Ví dụ:

ping nginx-c2

Docker có DNS nội bộ giúp resolve tên container thành IP.

---

# Vì sao nên dùng container name thay vì IP

Container IP được cấp động nên có thể thay đổi khi container restart hoặc recreate.

Do đó DevOps thường dùng:

- container name
- service name

thay vì hardcode IP.

---

# Subnet và Gateway

Khi inspect network ta sẽ thấy:

Subnet: dải IP của network.

Ví dụ:

172.18.0.0/16

Gateway: địa chỉ gateway của network.

Ví dụ:

172.18.0.1

Gateway cho phép container giao tiếp ra ngoài network.

---

# Lệnh đã dùng

docker network create mynetwork
docker network ls
docker network inspect mynetwork

docker run -d --name nginx-c1 --network mynetwork nginx
docker run -d --name nginx-c2 --network mynetwork nginx

docker exec -it nginx-c1 bash
ping nginx-c2

---

# docker network inspect

Lệnh này giúp xem thông tin network:

docker network inspect mynetwork

Thông tin bao gồm:

- subnet
- gateway
- network driver
- container trong network
- IP address của container

---

# Điều học được

- container cần network để giao tiếp
- docker có DNS nội bộ
- nên dùng container name thay vì IP
- docker network inspect giúp debug network
