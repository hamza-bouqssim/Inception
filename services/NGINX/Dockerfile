FROM debian:buster

RUN apt-get update && apt-get install nginx -y

EXPOSE 8000

ENTRYPOINT ["nginx", "-g", "daemon off;"]




