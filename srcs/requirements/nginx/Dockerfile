FROM debian:buster


RUN apt-get -y update
RUN apt-get install -y nginx && apt-get install openssl -y && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[hbouqssi.42.fr]"

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD [ "/script.sh" ]