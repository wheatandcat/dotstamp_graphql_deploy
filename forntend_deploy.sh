#!/bin/bash

cd /usr/local/app/dotstamp_graphql_client
git pull origin master
docker build --tag="dotstamp_graphql_client:latest" .

cd /usr/local/app/

docker-compose restart webapp
