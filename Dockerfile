# Download base image ubuntu 20.04
FROM ubuntu:20.04

#Define time zone
ENV TZ=America/Bogota

#Deny any interaction
ENV DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install HTTPD_Server
RUN apt-get install -y apache2

# Check Status HTTPD_Server
RUN systemctl restart apache2

# Check Status HTTPD_Server
RUN systemctl status apache2 

COPY . /usr/local/apache2/htdocs/

# Expose Port for the Application 
EXPOSE 80 443