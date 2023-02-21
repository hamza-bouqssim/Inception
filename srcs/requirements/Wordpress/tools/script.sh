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
wp config set WP_REDIS_HOST "redis" --allow-root
wp config set WP_REDIS_PORT "6379" --allow-root
wp config set WP_CACHE "true" --allow-root
# wp config set --allow-root WP_CACHE_KEY_SALT $DOMAIN_NAME
wp core install  -path=/var/www/html --url="localhost" --title="kradagh" --admin_user="supervisor" --admin_password=0000 --admin_email="hamzaboukssim6@gmail.com" --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
wp wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
mkdir /run/php
/usr/sbin/php-fpm7.3 -F