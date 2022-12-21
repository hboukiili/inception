FROM debian:buster

RUN apt update -y

RUN apt install wget -y


RUN apt install -y php php7.3-mysql

RUN mkdir -p /var/www/html/adminer/

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer/index.php --no-check-certificate

ENTRYPOINT php -S '[::]: 8080' -t/var/www/html/adminer/