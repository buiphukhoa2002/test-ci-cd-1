# Specifies the base image to use for the Docker container
FROM nginx

# Copies the contents of the current directory to the specified path in the container
COPY . /usr/share/nginx/html

# Exposes port 80 to allow traffic to the web server
EXPOSE 80

# To build this Docker image, use the command:
# docker build . -t img-html

# You may encounter this error:
# ERROR: error during connect: Head "http://%2F%2F.%2Fpipe%2FdockerDesktopLinuxEngine/_ping": open //./pipe/dockerDesktopLinuxEngine: The system cannot find the file specified.
# This error indicates that Docker Desktop is not running. Please start Docker Desktop and try again.

# To run the Docker container, use the command:
# docker run -d -p 8080:80 img-html
# This maps port 8080 on the host to port 80 in the container
# You can then access the web server by navigating to http://localhost:8080 in your web browser.

# To stop the running container, first find the container ID using:
# docker ps
# Then stop the container with:
# docker stop <container_id> 