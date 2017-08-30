CREATE DATABASE test;
USE test;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int auto_increment,
primary key(id)
);
INSERT INTO users(name,pass) VALUES('IMAGE','qwesifubaoausfbiaaf'),('asd','adasdbasawerwerwebsd'),('flag','flag{mysqli_hooray}');

