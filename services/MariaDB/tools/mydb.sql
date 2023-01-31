CREATE DATABASE if not exists wordpress;
CREATE USER 'hbouqssi'@'%';
GRANT ALL PRIVILEGES ON my_database.* to 'hbouqssi'@'%' IDENTIFIED BY '0000';
ALTER USER 'root'@'localhost' identified by '0000';
FLUSH PRIVILEGES;