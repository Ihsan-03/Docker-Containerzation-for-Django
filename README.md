# Docker Containerization for Django

This repository shows how to containerize a Django web application using Docker

## Technologies Used
- Docker
- Python
- Django


## What I Practiced

- Building Docker images
- Running Docker containers
- Docker Files
- Port mapping
- Viewing container logs
- Accessing Django applications inside containers

## Docker Components
### Dockerfile

The Dockerfile contains instructions used to build a Docker image for the Django application.

### Build Docker Image
```bash
docker build -t myapp .
```
Builds a Docker image named myapp using the Dockerfile in the current directory.

### Run Docker Container
```bash
docker run -d -p 8000:8000 myapp
```
Creates and starts a container from the myapp image in detached mode.

### Port Mapping
```bash
-p 8000:8000
```
Maps port 8000 on the host machine to port 8000 inside the container.


## Commands Used

docker build -t myapp .

docker run -d -p 8000:8000 myapp

docker ps

docker logs <container-id>

docker exec -it <container-id> bash


## Application Access

After running the container:
```text
http://localhost:8000/demo/
```

## Project Structure

```text
.
├── Dockerfile
├── README.md 
├── requirements.txt
└── devops
    ├── manage.py
    ├── demo
    └── devops
```

## Components
- devops/demo → Django web application containing views, URLs, templates, and business logic.
- devops/devops → Django project configuration containing settings, project-level URLs, WSGI, and ASGI confi>
- manage.py → Django management utility used to run and manage the application.

so 
