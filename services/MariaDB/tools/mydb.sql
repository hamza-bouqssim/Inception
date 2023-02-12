CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'hbouqssi'@'wordpress.inception';
GRANT SELECT, INSERT, UPDATE, DELETE ON wordpress.* to 'hbouqssi'@'wordpress.inception' IDENTIFIED BY '0000';
ALTER USER 'root'@'localhost' identified by '0000';
FLUSH PRIVILEGES;