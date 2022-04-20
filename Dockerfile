# Download base image ubuntu 20.04
FROM ubuntu:20.04

#Define time zone
ENV TZ=America/Bogota

#Deny any interaction
ENV DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
CMD sudo apt update

# Install HTTPD_Server
CMD sudo apt-get install -y apache2

# Check Status HTTPD_Server
CMD systemctl restart apache2

# Check Status HTTPD_Server
CMD systemctl status apache2 

COPY . /usr/local/apache2/htdocs/

# Expose Port for the Application 
EXPOSE 80 443