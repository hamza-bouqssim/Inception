#!bin/bash

echo "Installing Wordpress ..."

mkdir -p /srv/www
cd /srv/www
chown www-data: /srv/www
curl http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
rm -rf latest.tar.gz



echo "Configuring Wordpress ..."

rm -rf /srv/www/wordpress/wp-config-sample.php
mv /wp-config.php /srv/www/wordpress/


echo  "Install WP-CLI ..."

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
exec "$@"