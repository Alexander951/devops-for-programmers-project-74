prepare-env:
	make -C app prepare-env

install:
	docker compose run --rm app npm ci

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

test: ci

dev:
	docker compose up

build:
	docker compose -f docker-compose.yml build app
	
push:
	docker compose -f docker-compose.yml push app
	

	
