#!/bin/sh
docker-compose down
sleep 10
docker rmi $(docker images -q) -f
sleep 5
docker volume prune -f