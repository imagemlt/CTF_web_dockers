CREATE DATABASE test;
USE test;
CREATE TABLE users(
id int not null,
name varchar(255) not null,
pass varchar(255) not null,
`level` int not null,
primary key(id)
);
CREATE TABLE messages(
message varchar(255) not null,
title varchar(255) not null,
id int auto_increment,
name varchar(255) not null,
primary key(id)
);
INSERT INTO messages(message,title,name) VALUES('SSS','CCCC','aaa'),('AAA','DDD','ddd');
INSERT INTO users(name,pass,`level`,id) VALUES('admin','flag{mysqli_wow}',1,1);

