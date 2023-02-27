FILE=/home/hamza/Desktop/Inception/srcs/docker-compose.yml

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

fclean:	down
		docker system prune -fa
		docker volume rm srcs_mariadb_v srcs_wordpress_v
		rm -Rf /home/hbouqssi/data/db
		rm -Rf /home/hbouqssi/data/wp
		rm -rf /home/hbouqssi/data
