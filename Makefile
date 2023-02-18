# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hbouqssi <hbouqssi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/18 13:35:55 by hbouqssi          #+#    #+#              #
#    Updated: 2023/02/18 13:39:24 by hbouqssi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILE=/Users/hbouqssi/Desktop/Inception/docker-compose.yml

up:
	docker-compose -f $(FILE) up -d --build

