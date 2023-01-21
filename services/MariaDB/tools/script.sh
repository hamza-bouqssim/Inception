#!/bin/bash

echo -e "\033[1;31mStarting the MariaDB service ...\033[0m"
sleep 2

cat > my_db.sql << EOF
CREATE DATABASE IF NOT EXISTS $my_db_name ;
CREATE USER IF NOT EXISTS '$my_db_user'@'%' IDENTIFIED BY '$my_db_pwd' ;
GRANT ALL PRIVILEGES ON $my_db_name.* TO '$my_db_user'@'%' ;
ALTER USER 'root'@'localhost' IDENTIFIED BY '0000' ;
FLUSH PRIVILEGES;
EOF

mysql < my_db.sql
