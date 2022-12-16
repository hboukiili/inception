FROM debian:buster

RUN apt update -y

RUN apt install redis -y

RUN service redis-server start

CMD redis-server --protected-mode no
