CREATE DATABASE phpformysql;
use phpformysql;
CREATE TABLE php(
`user` varchar(255) not null,
pw varchar(255) not null,
id int auto_increment,
PRIMARY KEY(id)
);
insert into php(`user`,`pw`) VALUES('admin','fsaoaigubbwouibiaewrawe');

CREATE DATABASE phpformysql2;
use phpformysql2;
CREATE TABLE php(
`user` varchar(255) not null,
pw varchar(255) not null,
id int auto_increment,
PRIMARY KEY(id)
);
insert into php(`user`,`pw`) VALUES('admin','fsaoaigubbwouibiaewrawe');

CREATE DATABASE npuctf;
use npuctf;
CREATE TABLE interest(
uname varchar(255) not null,
pwd varchar(255) not null,
id int auto_increment,
PRIMARY KEY(id)
);
insert into interest(uname,pwd) VALUES('admin','fsaoaigafsdfsdubbwouibiaewrawe');
CREATE USER 'web14'@'localhost' IDENTIFIED BY 'web14'; 
GRANT ALL ON npuctf.* TO 'web14'@'localhost'; 
CREATE USER 'web11'@'localhost' IDENTIFIED BY 'web11'; 
GRANT ALL ON phpformysql.* TO 'web11'@'localhost'; 
CREATE USER 'web9'@'localhost' IDENTIFIED BY 'web9'; 
GRANT ALL ON phpformysql2.* TO 'web9'@'localhost'; 

