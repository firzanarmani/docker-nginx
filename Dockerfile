# FROM nginx:alpine

FROM alpine:3.12.0

# Add Nginx package from the Alpine Linux repository
RUN apk update
RUN apk add nginx

# Add local Nginx configuration files to the Docker image
ADD /nginx-conf /etc/nginx

# Expose port (Container listens to this port at runtime; inter-container network communication)
EXPOSE 80

# Start server
CMD ["nginx"]