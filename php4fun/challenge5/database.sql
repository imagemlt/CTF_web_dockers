CREATE DATABASE test;
USE test;
CREATE TABLE users(
name varchar(255) not null,
pass varchar(255) not null,
id int not null,
`level` varchar(255) not null,
primary key(id)
);
INSERT INTO users(name,pass,id,`level`) VALUES('IMAGE','qwesifubaoausfbiaaf',2,2),('jimbo18714','MAYBECHANGED',8,1),('admin','nsdfopwgpwoeignPEOINPInnOEOINGSA',1,1);

