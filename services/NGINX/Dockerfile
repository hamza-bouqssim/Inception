FROM debian:buster


RUN apt -y update
RUN apt install -y nginx && apt install openssl -y && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[hbouqssi.1337.ma]"

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD [ "/script.sh" ]