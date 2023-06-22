up:
	docker-compose up

down:
	docker-compose down

build:
	docker-compose up --build

rebuild: down build

restart: down up

.PHONY: up down build rebuild restart