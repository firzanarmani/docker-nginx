# About this repository
This repository contains the files needed to 
- create a Docker image which runs an Nginx web server
- configure Nginx to serve as a reverse proxy (proxies to this repo page)

## Usage
```shellscript
# Build the image with the tag 'docker-nginx' 
# using the Dockerfile in the current directory
docker build -t docker-nginx .

# Run a container of the image tagged 'docker-nginx' and 
# map the host's port 80 to the container's port 80 
# (and optionally clean up the container after it exits)
docker run [--rm] -p 80:80 docker-nginx
```
