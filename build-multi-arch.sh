#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-ttyd:latest . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-ttyd:$1  . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/alpine-ttyd:$1.0 . --push
