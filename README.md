# Inception
The purpose of this project is to expand our understanding of system administration through the utilization of Docker

So the purpose of this project is to set up a small infrastructure comprised of various services using Docker Compose within a virtual machine. Its main goal is to provide hands-on experience in **system administration and Docker utilization**. The project enforces specific guidelines, which include **creating containers** using either the second-to-last stable version of **Alpine or Debian** to enhance performance, crafting **Dockerfiles for each service**, and incorporating a Makefile to invoke the Dockerfiles in the **docker-compose.yml**. The project necessitates **developing three separate containers for NGINX, WordPress + php-fpm, and MariaDB**, as well as **two volumes to store the WordPress database and website files**. Additionally, a **docker-network is established to establish connections between the containers**, and each container is configured to restart upon a system crash. Finally, the project strictly prohibits the use of pre-built Docker images or DockerHub services, with the exception of Alpine/Debian images.
### Resources
[Learn Docker](https://docs.docker.com/get-started)  
[Mariadb](https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-11)  
[Wordpress](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-on-ubuntu-20-04-with-a-lamp-stack)  
[Nginx](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10)  
[Nginx](https://youtu.be/7VAI73roXaY)  
[wp cli](https://wp-cli.org/)  
