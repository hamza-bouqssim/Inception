FILE=/home/hbouqssi/Desktop/Inception/srcs/docker-compose.yml

up:
	mkdir -p /home/hbouqssi/data/wp
	mkdir -p /home/hbouqssi/data/db
	docker compose -f $(FILE) up -d --build

down:
	docker compose  -f $(FILE) down

ps:
	docker ps -a

img:
	docker images

clean: down
		docker volume rm srcs_WP srcs_DB
fclean:	down
		docker system prune -fa
		sudo rm -Rf /home/hbouqssi/data/db
		sudo rm -Rf /home/hbouqssi/data/wp
		sudo rm -rf /home/hbouqssi/data
