# Week 2 Mini Project - Dockerized Web Stack

## 📌 Project Overview

This project demonstrates a simple multi-container system using Docker Compose.

The system includes:

- A Node.js application
- An Nginx reverse proxy

Nginx receives incoming requests and forwards them to the Node.js application.

---

## 🧱 Architecture

```

Client → Nginx → Node App

````

- Nginx listens on port 80 (mapped to host)
- Node.js app runs on port 3000
- Nginx forwards requests to the app using container name

---

## 🚀 How to Run

### 1. Navigate to project folder

```bash
cd docker-labs/week2-mini-project
````

### 2. Build and start services

```bash
docker compose up -d --build
```

### 3. Check running containers

```bash
docker compose ps
```

### 4. Test the application

```bash
curl http://localhost:8085
```

Expected output:

```
Hello from Node app behind Nginx
```

---

## 🌐 Ports Used

| Service | Container Port | Host Port |
| ------- | -------------- | --------- |
| Nginx   | 80             | 8085      |
| Node    | 3000           | internal  |

---

## ⚙️ Services

### 1. App (Node.js)

* Runs a simple HTTP server
* Listens on port 3000
* Built using Dockerfile

### 2. Nginx

* Acts as a reverse proxy
* Listens on port 80
* Forwards requests to `app:3000`

---

## 🔧 Useful Commands

### View logs

```bash
docker compose logs
```

### Follow logs

```bash
docker compose logs -f
```

### Stop project

```bash
docker compose down
```

---

## 🐞 Debugging

If the app is not working:

* Check logs:

  ```bash
  docker compose logs
  ```

* Check container status:

  ```bash
  docker compose ps
  ```

* Enter container:

  ```bash
  docker exec -it mini-node-app sh
  ```

---

## 🧠 What I Learned

* How to dockerize an application
* How to run multi-container systems with Docker Compose
* How containers communicate via network
* How Nginx works as a reverse proxy



