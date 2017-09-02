# Pull base image 
FROM ubuntu:trusty
  
MAINTAINER image "malingtao1019@163.com"  
# update source  
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe"> /etc/apt/sources.list  
RUN apt-get update  

RUN apt-get install -y apache2 php5 php5-mysql


COPY *.php /var/www/html/
RUN rm /var/www/html/index.html
COPY httpd-foreground /usr/bin
EXPOSE 80
CMD ["httpd-foreground"]
 
