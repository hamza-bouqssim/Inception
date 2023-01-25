FROM debian:buster

RUN apt update -y && apt install php-cgi php-mysql -y

RUN apt install wget -y && wget http://wordpress.org/latest.tar.gz -P /var/www/html -y

COPY COPY ./tools/script.sh /