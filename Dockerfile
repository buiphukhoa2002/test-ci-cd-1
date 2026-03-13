# Specifies the base image to use for the Docker container
FROM nginx

WORKDIR /usr/share/nginx/html

COPY . .

EXPOSE 80