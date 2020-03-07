alter user 'root'@'localhost' identified by 'Mysql3306';
drop user 'non-root-user'@'localhost';
create user 'non-root-user'@'localhost' identified by 'Mysql3306';
grant all privileges on mysql.* to 'non-root-user'@'localhost' with grant option;
drop database if exists testdb;
create database testdb;
grant all privileges on testdb.* to 'non-root-user'@'localhost';
