#!/bin/bash

cd /usr/local/app/dotstamp_graphql
git pull origin master
docker build --tag="dotstamp_graphql:latest" .

cd /usr/local/app/

docker-compose restart app
