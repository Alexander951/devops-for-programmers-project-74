setup:
	docker compose -f docker-compose.yml build app

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

