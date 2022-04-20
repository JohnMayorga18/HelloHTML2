# Download base image httpd 2.4
FROM httpd:2.4

#Define time zone
ENV TZ=America/Bogota

#Deny any interaction
ENV DEBIAN_FRONTEND=noninteractive

#Copy DevCode
COPY ./index.html /usr/local/apache2/htdocs/

#Echo message
CMD echo "test"

# Expose Port for the Application 
EXPOSE 80 443