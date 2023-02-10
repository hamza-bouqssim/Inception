CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'hbouqssi'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON wordpress.* to 'hbouqssi'@'localhost' IDENTIFIED BY '0000';
ALTER USER 'root'@'localhost' identified by '0000';
FLUSH PRIVILEGES;