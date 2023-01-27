FROM debian:buster


RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/

COPY ./tools/mydb.sql /

COPY ./tools/script.sh /

RUN chmod +x ./script.sh

RUN ./script.sh

ENTRYPOINT ["mysqld"]