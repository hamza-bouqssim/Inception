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
exec "$@"