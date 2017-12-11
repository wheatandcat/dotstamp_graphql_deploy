#!/bin/bash

cd /app/dotstamp_graphql_deploy/dotstamp_graphql_client
git pull origin master
docker build --tag="dotstamp_graphql_client:latest" .

cd /app/dotstamp_graphql_deploy/

docker-compose up -d webapp
