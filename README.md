# dotstamp_graphql_deploy

### start
docker-compose up -d


## proxy docker build
docker build --tag="dotstamp_graphql_deploy:latest" .

### deploy
sh backend_deploy.sh
sh frontend_deploy.sh

### stop
docker-compose stop
