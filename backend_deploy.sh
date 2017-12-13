#!/bin/bash

cd /app/dotstamp_graphql_deploy/dotstamp_graphql
git pull origin master
docker build --tag="dotstamp_graphql:latest" .

cd /app/dotstamp_graphql_deploy/

docker-compose up -d app
