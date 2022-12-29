FROM debian:buster

RUN apt update && apt install -y nginx

COPY ./hboukili.crt /

COPY ./hboukili.key /

COPY ./default /etc/nginx/sites-available/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
