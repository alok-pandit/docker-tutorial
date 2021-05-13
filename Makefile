build:
	docker build -t node-app-image .

del:
	docker rm node-app -fv

run:
	docker run -v $(PWD):/app:ro -v /app/node_modules --env-file ./.env -p 3000:4000 -d --name node-app node-app-image

bash:
	docker exec -it node-app bash

ps:
	docker ps

ls:
	docker image ls

volume_ls:
	docker volume ls

volume_del:
	docker volume prune

compose:
	docker-compose up -d --build

down:
	docker-compose down -v

dev_up:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build

prod_up:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build

dev_down:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml down

prod_down:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml down