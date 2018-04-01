CREATE DATABASE ctf;
use ctf;
CREATE TABLE interest(
uname varchar(255) not null,
pwd varchar(255) not null,
id int auto_increment,
PRIMARY KEY(id)
);
insert into interest(uname,pwd) VALUES('admin','fsaoaigafsdfsdubbwouibiaewrawe');
CREATE USER 'web'@'localhost' IDENTIFIED BY 'web'; 
GRANT ALL ON ctf.* TO 'web'@'localhost'; 

