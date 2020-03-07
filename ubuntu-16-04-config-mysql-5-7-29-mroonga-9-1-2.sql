alter user 'root'@'localhost' identified by 'Mysql3306';
drop user 'user01'@'localhost' identified by 'Mysql3306';
create user 'user01'@'localhost' identified by 'Mysql3306';
grant all privileges on mysql.* to 'user01'@'localhost' with grant option;
drop database testdb;
create database testdb;
grant all privileges on testdb.* to user01@localhost;
