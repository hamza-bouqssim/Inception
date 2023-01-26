FROM debian:buster

RUN apt update -y && apt install php-cgi php-mysql -y

COPY ./tools/script.sh /

CMD ["/script.sh"]