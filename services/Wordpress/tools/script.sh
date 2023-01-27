#!bin/bash

echo "Installing Wordpress ..."

sudo mkdir -p /srv/www
sudo chown www-data: /srv/www
curl https://wordpress.org/latest.tar.gz | sudo -u www-data tar zx -C /srv/www


echo "Configuring Wordpress ..."

rm -rf /srv/www/wordpress/wp-config-sample.php
mv /wp-config.php /srv/www/wordpress/


echo  "Install WP-CLI ..."

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp