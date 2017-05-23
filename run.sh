#!/usr/bin/env bash


docker rm $(docker ps -aq) -f

docker-compose rm  -f

docker build -t laravel .

docker-compose up -d

docker ps