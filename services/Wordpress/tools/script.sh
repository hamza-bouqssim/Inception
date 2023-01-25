#!bin/bash
#COLORS:------------------------------
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
#------------------------------------

echo "${Red} Starting Configuring WordPress"
sleep 1
 tar -xzvf /var/www/html/latest.tar.gz
 rm /var/www/html/latest.tar.gz
 cp -r /var/www/html/wordpress/* /var/www/html
 rm -rf /var/www/html/wordpress
 cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php