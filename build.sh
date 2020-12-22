
rm -rf ./docker-alpine-libwebsockets-with-libuv
git clone https://github.com/matti/docker-alpine-libwebsockets-with-libuv.git

rm -rf ./app
mv ./docker-alpine-libwebsockets-with-libuv/app .

docker build --no-cache -t hackinglab/alpine-ttyd:3.2.0 -t hackinglab/alpine-ttyd:3.2 -t hackinglab/alpine-ttyd:latest -f Dockerfile .

docker push hackinglab/alpine-ttyd


