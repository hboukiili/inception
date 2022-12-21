FROM debian:buster

RUN apt update && apt install -y php7.3-fpm php7.3-mysql curl

WORKDIR /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

WORKDIR /

ARG DB_NAME \
    newUser \
    Newpassword \
    USER_WP \
    PASSWORD_WP \
    email \
    title \
    EMAIL_WP

RUN chown -R www-data:www-data /var/www/html/wordpress

RUN wp core config --dbname=${DB_NAME} --dbuser=${newUser} --dbpass=${Newpassword} --dbhost=${DB_NAME} --path='/var/www/html/wordpress' --allow-root --skip-check

COPY ./script.sh /

RUN chmod 777 script.sh

ENTRYPOINT ["./script.sh"]

CMD ["php-fpm7.3", "-F", "-R"]