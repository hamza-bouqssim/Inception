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

echo "Installing Wordpress ..."

sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www

echo "Configuring Wordpress"

rm -rf /srv/www/wordpress/wp-config.php
cp /home/jugurtha/Desktop/Inception/services/Wordpress/tools/wp-config.php /srv/www/wordpress/

echo ""