# Docker Containerization for Django

This repository contains a Django application containerized using Docker as part of my hands-on Docker learning journey.

## What I Practiced

- Building Docker images
- Running Docker containers
- Docker Files
- Port mapping
- Viewing container logs
- Accessing Django applications inside containers

## Commands Used

docker build -t myapp .

docker run -d -p 8000:8000 myapp

docker ps

docker logs <container-id>

docker exec -it <container-id> bash

## Application Access

After running the container:

http://localhost:8000/demo/

