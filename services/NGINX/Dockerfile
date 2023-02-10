

FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY  ./conf/nginx.conf /etc/nginx/
COPY  ./keys/s.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY  ./keys/p.key /etc/ssl/private/nginx-selfsigned.key

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]