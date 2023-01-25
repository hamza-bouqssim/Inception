#!/bin/bash

#COLORS:------------------------------
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
#------------------------------------

mysql_install_db

cat << EOF > mydb.sql
CREATE DATABASE IF NOT EXISTS wordpress ;
CREATE USER IF NOT EXISTS 'hamza'@'%' IDENTIFIED BY 'hamza123' ;
GRANT ALL PRIVILEGES ON wordpress.* TO 'hamza'@'%' ;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;
FLUSH PRIVILEGES;
EOF

service mysql restart
mysql < mydb.sql
