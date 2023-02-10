FROM debian:buster

RUN apt update -y && apt install php-cgi php-mysql -y

RUN apt update && apt install curl -y

COPY ./tools/script.sh /

RUN chmod +x ./script.sh
EXPOSE 9000

CMD ["/script.sh"]