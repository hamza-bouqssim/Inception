FILE=/home/hamza/Desktop/Inception/srcs/docker-compose.yml

up:
	mkdir -p /home/hamza/data/wp
	mkdir -p /home/hamza/data/db
	sudo docker compose -f $(FILE) up -d --build

