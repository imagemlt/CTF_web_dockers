CREATE DATABASE phpformysql;
use phpformysql;
CREATE TABLE php(
`user` varchar(255) not null,
pw varchar(255) not null,
id int auto_increment,
PRIMARY KEY(id)
);
insert into php(`user`,`pw`) VALUES('admin','fsaoaigubbwouibiaewrawe');

