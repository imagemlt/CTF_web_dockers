CREATE DATABASE test;
USE test;
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
