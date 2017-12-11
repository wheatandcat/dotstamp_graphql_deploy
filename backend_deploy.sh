#!/bin/bash

cd /app/dotstamp_graphql
git pull origin master
docker build --tag="dotstamp_graphql:latest" .

cd /app/

docker-compose up -d app
