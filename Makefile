PROJECT_NAME = program-builder

image:
	docker compose build

build: image

down:
	yes | docker-compose rm -sv

up: build
	docker compose up -d

shell: up
	@docker compose exec $(PROJECT_NAME) bash

logs:
	@docker compose logs -f $(PROJECT_NAME)

restart: down up

.PHONY: all build down up bash logs restart