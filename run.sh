#!/bin/sh
if [ ! -f .env ]; then
	cp .env.dev .env
fi
docker compose down
docker compose up --build --remove-orphans -d
docker exec -it hadoop bash
