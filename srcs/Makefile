COMPOSE_FILE = ./docker-compose.yml

build:
	@mkdir -p ./requirements/tools/volumes/DB
	@mkdir -p ./requirements/tools/volumes/wordpress
	@docker-compose -f $(COMPOSE_FILE) build
up :
	@docker-compose -f $(COMPOSE_FILE) up
down :
	@docker-compose -f $(COMPOSE_FILE) down
clean :
	@docker stop $(docker ps -qa)
	@docker system prune -af
	@docker volume rm $(docker volume ls -q)
	@docker network rm $(docker network ls -q)