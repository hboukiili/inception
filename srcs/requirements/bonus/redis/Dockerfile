FROM debian:buster

RUN apt update -y

RUN apt install redis -y

RUN service redis-server start

ENTRYPOINT ["redis-server", "--protected-mode", "no"]
