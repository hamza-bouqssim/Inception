#!/bin/bash
sleep 5
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

cd /var/www/html

chmod 777 /var/www/html

wp core download --allow-root

cp wp-config-sample.php wp-config.php
wp config set DB_NAME "wordpress" --allow-root
wp config set DB_USER "hbouqssi" --allow-root
wp config set DB_PASSWORD "0000" --allow-root
wp config set DB_HOST "mariadb" --allow-root
mkdir /run/php
/usr/sbin/php-fpm7.3 -F