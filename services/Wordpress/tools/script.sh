#!bin/bash

echo "Installing Wp-cli ..."

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv /wp-cli.phar /usr/local/bin/wp
rm -rf wp-cli.phar
mkdir /var/www/ && mkdir /var/www/html &&  cd /var/www/html/
wp core download --allow-root
mv wp-config-sample.php wp-config.php
wp config set DB_NAME "wordpress" --allow-root
wp config set DB_USER "hbouqssi" --allow-root
wp config set DB_PASSWORD "0000" --allow-root

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

wp theme install astra --activate --allow-root


wp plugin install redis-cache --activate --allow-root


sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php


/usr/sbin/php-fpm7.3 -F