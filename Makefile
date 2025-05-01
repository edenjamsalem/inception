SHELL := /bin/bash -l

all : build up

up: 
	docker compose -f ./srcs/docker-compose.yml up 

down: 
	docker compose -f ./srcs/docker-compose.yml down

start: 
	docker compose -f ./srcs/docker-compose.yml start

stop: 
	docker compose -f ./srcs/docker-compose.yml stop

build:
	docker compose -f ./srcs/docker-compose.yml build

clean: stop down
	@if [ "$(docker images -qa)" ]; then \
		docker image rm $(docker images -qa); \
	else \
		echo "No images to remove."; \
	fi
fclean: clean
	@if [ "$(docker network ls -q)" ]; then \
		docker network rm $(docker network ls -q); \
	else \
	echo "No networks to remove."; \
	fi
	
	@if [ "$(docker volume ls -q)" ]; then \
		docker volume rm $(docker volume ls -q); \
	else \
		echo "No volumes to remove."; \
	fi

status:
	@docker ps -a
	@echo
	@docker images
	@echo
	@docker volume ls

.PHONY: up down stop start status build clean fclean
