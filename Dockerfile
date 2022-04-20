# Download base image ubuntu 20.04
FROM ubuntu:20.04

# Update Ubuntu Software repository
RUN apt update

# Install HTTPD_Server
RUN apt-get install -y apache2

COPY . /usr/local/apache2/htdocs/

# Expose Port for the Application 
EXPOSE 80 443