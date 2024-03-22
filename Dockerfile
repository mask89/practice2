FROM ubuntu

CMD echo "Hello ubuntu"

# Update the repository
RUN apt-get update

# Install necessary tools
RUN apt-get install -y nano wget dialog net-tools vim git

# Download and Install Nginx
RUN apt-get install -y nginx

# Remove file index docker
RUN rm -v /var/www/html/index.nginx-debian.html

ADD index.nginx-debian.html /var/www/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon on;" ]

