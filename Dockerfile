# FROM nginx:alpine

FROM alpine:3.12.0

# Add Nginx package from the Alpine Linux repository
RUN apk update
RUN apk add nginx

# Start server
CMD ["nginx"]