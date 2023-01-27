FROM debian:buster

RUN apt update -y && apt install php-cgi php-mysql -y

COPY ./tools/script.sh /

COPY ./tools/wp-config.php /
RUN chmod +x ./script.sh

CMD ["/script.sh"]