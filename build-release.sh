#!/bin/bash

rm -rf ./docker-alpine-libwebsockets-with-libuv
git clone https://github.com/matti/docker-alpine-libwebsockets-with-libuv.git

rm -rf ./app
mv ./docker-alpine-libwebsockets-with-libuv/app .

docker build --no-cache -t hackinglab/alpine-ttyd:$1.0 -t hackinglab/alpine-ttyd:$1 -t hackinglab/alpine-ttyd:latest -f Dockerfile .

docker push hackinglab/alpine-ttyd
docker push hackinglab/alpine-ttyd:$1
docker push hackinglab/alpine-ttyd:$1.0

rm -rf ./docker-alpine-libwebsockets-with-libuv
