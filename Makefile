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
	docker images -qa | xargs -r docker rmi -f

fclean: clean
	docker volume ls -q | xargs -r docker volume rm

status:
	@docker ps -a
	@echo
	@docker images
	@echo
	@docker volume ls

.PHONY: up down stop start status build clean fclean
