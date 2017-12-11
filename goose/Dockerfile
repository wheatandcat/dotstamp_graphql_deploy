FROM golang:1.9

RUN go get bitbucket.org/liamstask/goose/cmd/goose

RUN mkdir /app

COPY . /app

WORKDIR /app
