FROM ubuntu
MAINTAINER Marubo (formateurmarubo@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx 
ADD static-website-example/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
