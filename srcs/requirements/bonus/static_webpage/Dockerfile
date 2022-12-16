FROM debian:buster

RUN apt update && apt upgrade

RUN apt install nodejs npm -y

RUN npm install -g nodemon

ADD portfolio /portfolio

WORKDIR /portfolio

CMD nodemon