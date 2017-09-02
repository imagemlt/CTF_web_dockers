# ./challenge3/database.sql
CREATE DATABASE challenge3;
USE challenge3;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int not null,
primary key(id)
);
INSERT INTO users(name,pass,id) VALUES('IMAGE','qwesifubaoausfbiaaf',4),('asd','adasdbasawerwerwebsd',3),('flag','flag{mysqli_float}',1);
CREATE USER 'challenge3'@'localhost' IDENTIFIED BY 'challenge3'; 
GRANT ALL ON challenge3.* TO 'challenge3'@'localhost'; 


# ./challenge5/database.sql
CREATE DATABASE challenge5;
USE challenge5;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int not null,
`level` varchar(255) not null,
primary key(id)
);
INSERT INTO users(name,pass,id,`level`) VALUES('IMAGE','qwesifubaoausfbiaaf',2,2),('jimbo18714','MAYBECHANGED',8,1),('admin','nsdfopwgpwoeignPEOINPInnOEOINGSA',1,1);
CREATE USER 'challenge5'@'localhost' IDENTIFIED BY 'challenge5'; 
GRANT ALL ON challenge5.* TO 'challenge5'@'localhost'; 

# ./challenge7/database.sql
CREATE DATABASE challenge7;
USE challenge7;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int auto_increment,
primary key(id)
);
INSERT INTO users(name,pass) VALUES('IMAGE','qwesifubaoausfbiaaf'),('asd','adasdbasawerwerwebsd'),('flag','flag{mysqli_hooray}');
CREATE USER 'challenge7'@'localhost' IDENTIFIED BY 'challenge7'; 
GRANT ALL ON challenge7.* TO 'challenge7'@'localhost'; 

# ./challenge9/database.sql
CREATE DATABASE challenge9;
USE challenge9;
CREATE TABLE board(
subject varchar(255) not null,
content varchar(255) not null,
writer varchar(255) not null,
idx int auto_increment,
primary key(idx)
);
CREATE TABLE flag(
flag varchar(255) not null,
id int auto_increment,
primary key(id)
);
INSERT INTO board(subject,content,writer) VALUES('math','qwesifubaoausfbiaaf','xu'),('english','adasdbasawerwerwebsd','Raphael'),('chinese','qqqq','image');
INSERT INTO flag(flag) values('CTF{5ql1_upp3rc4s3}');
CREATE USER 'challenge9'@'localhost' IDENTIFIED BY 'challenge9'; 
GRANT ALL ON challenge9.* TO 'challenge9'@'localhost'; 

# ./challenge1/database.sql
CREATE DATABASE challenge1;
USE challenge1;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int auto_increment,
primary key(id)
);
INSERT INTO users(name,pass) VALUES('IMAGE','qwesifubaoausfbiaaf'),('asd','adasdbasawerwerwebsd'),('flag','flag{mysqli_hooray}');
CREATE USER 'challenge1'@'localhost' IDENTIFIED BY 'challenge1'; 
GRANT ALL ON challenge1.* TO 'challenge1'@'localhost'; 

# ./challenge4/database.sql
CREATE DATABASE challenge4;
USE challenge4;
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
CREATE USER 'challenge4'@'localhost' IDENTIFIED BY 'challenge4'; 
GRANT ALL ON challenge4.* TO 'challenge4'@'localhost'; 
