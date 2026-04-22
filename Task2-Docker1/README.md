# Task 2: Docker Installation and Application Deployment

Launched EC2 instance and connected it via SSH and installed the Docker
## Commands:
# Docker Installation:
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu

# Building the Docker Image:
docker build -t my-web-app:v1 .
# Running Container
docker run -d -p 8000:80 --name my-container my-web-app:v1
# To verify running docker and image:
docker ps
docker images


## Configuration Files
Base image: nginx:alpine
Copies index.html to nginx

Application accessible at http://13.234.17.25:8000
