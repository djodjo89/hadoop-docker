#!/bin/sh
docker compose up --build -d
docker exec -it hadoop bash
