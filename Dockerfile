FROM ubuntu:latest
MAINTAINER "Shanmugam Mohanavel shamvel@gmail.com"
RUN apt update
RUN apt install -y nginx
COPY index.html /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
