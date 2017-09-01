# Pull base image 
FROM ubuntu:trusty
  
MAINTAINER image "malingtao1019@163.com"  
# update source  
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe"> /etc/apt/sources.list  
RUN apt-get update  
RUN apt-get install -y mysql-server-5.6
COPY database.sql /root/
RUN /etc/init.d/mysql start &&\
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by 'toor';"&&\
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'toor';"&&\
    mysql -u root -ptoor -e "show databases;" &&\
    mysql -u root -ptoor </root/database.sql
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf \
	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf \
	&& mv /tmp/my.cnf /etc/mysql/my.cnf

RUN apt install -y apache2 php5 php5-mysql
COPY *.php /var/www/html/
COPY httpd-foreground /usr/bin
EXPOSE 80
CMD ["httpd-foreground"]
 
