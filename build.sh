#!/bin/bash

# build binary
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/amd64/file-server .
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o bin/arm64/file-server .

# build docker image
docker buildx create --name mybuilder --use
docker buildx build --platform linux/amd64,linux/arm64 -t poneding/file-server --push .