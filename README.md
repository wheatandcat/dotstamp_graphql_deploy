# dotstamp_graphql_deploy

### Install Docker Compose (for centOS)
```
sudo yum update
sudo yum install docker-io
service docker status
sudo service docker start
sudo mkdir -p /opt/bin
sudo sh -c 'curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` > /opt/bin/docker-compose'
sudo chmod +x /opt/bin/docker-compose
```

### proxy docker build
```
docker build --tag="dotstamp_graphql_deploy:latest" .
```

## db
docker build --tag="goose:latest" ./goose
mkdir goose/db/
cp -r dotstamp_graphql/db/migrations goose/db/
docker-compose -f goose/docker-compose.yml run goose

### start
```
docker-compose up -d
```

### deploy
```
sh backend_deploy.sh
sh frontend_deploy.sh
```

### status
```
docker-compose ps
```

### stop
```
docker-compose stop
```

## captainhook

### start
```
go get github.com/bketelsen/captainhook

captainhook -configdir ~/captainhook

```

### test
```
curl -X POST http://dotstampv2.com:8080/deploy_backend
```

# daemo
http://dotstampv2.com/
