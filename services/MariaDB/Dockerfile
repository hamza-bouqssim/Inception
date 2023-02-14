FROM debian:buster

RUN apt-get update -y
RUN apt-get install  mariadb-server -y

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT [ "/tmp/script.sh" ]

EXPOSE 3306

CMD ["mysqld"]
