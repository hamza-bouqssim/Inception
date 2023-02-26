FILE=/home/hamza/Desktop/Inception/srcs/docker-compose.yml

up:
	mkdir -p /home/hbouqssi/data/wp
	mkdir -p /home/hbouqssi/data/db
	sudo docker compose -f $(FILE) up -d --build

down:
	sudo docker compose  -f $(FILE) down

fclean:	down
		sudo docker system prune -fa
		sudo docker volume ls | awk '{print $2}' > volumes.txt
		export FIRST_VOLUME=$(awk 'NR==2{print $1}' < volumes.txt)
		export SECOND_VOLUME=$(awk 'NR==3{print $1}' < volumes.txt)
		sudo docker volume rm ${FIRST_VOLUME}
		sudo docker volume rm ${SECOND_VOLUME}
		rm volumes.txt
		sudo rm -Rf /home/hbouqssi/data/db
		sudo rm -Rf /home/hbouqssi/data/wp
		sudo rm -rf /home/hbouqssi/data
