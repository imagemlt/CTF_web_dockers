CREATE DATABASE test;
USE test;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int not null,
primary key(id)
);
INSERT INTO users(name,pass,id) VALUES('IMAGE','qwesifubaoausfbiaaf',4),('asd','adasdbasawerwerwebsd',3),('flag','flag{mysqli_float}',1);

