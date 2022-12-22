FROM debian:buster

RUN apt update && apt upgrade

RUN apt install npm nodejs  -y

ADD portfolio /portfolio

WORKDIR /portfolio

RUN npm init -y

RUN npm install express

ENTRYPOINT ["node", "./index.js"]