FROM ubuntu:latest
 
RUN apt-get -y update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install nginx -y
COPY ./ /var/www/html/
CMD ["nginx", "-g", "daemon off;"]

