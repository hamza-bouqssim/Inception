FROM mariadb:10.9.4

RUN sudo apt-get update && sudo apt-get install mariadb-server

COPY ./tools/50-server.conf /etc/mysql/mariadb.conf.d

COPY .tools/script.sh /

CMD ["./script.sh"]
