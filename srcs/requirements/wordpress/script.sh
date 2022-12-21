#!/bin/bash
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
wp core install --url=https://localhost --title=${title} --admin_user=${newUser} --admin_password=${Newpassword} --admin_email=${email} --path='/var/www/html/wordpress' --skip-email --allow-root
wp user create ${USER_WP} ${EMAIL_WP} --role=author  --path='/var/www/html/wordpress' --user_pass=${PASSWORD_WP} --allow-root
wp config --allow-root set WP_REDIS_HOST redis --path="/var/www/html/wordpress"
wp config --allow-root set WP_REDIS_PORT 6379 --path="/var/www/html/wordpress"
wp config --allow-root set WP_REDIS_DATABASE 0 --path="/var/www/html/wordpress"
wp plugin install redis-cache --activate  --allow-root --path="/var/www/html/wordpress"
wp redis enable --allow-root --force --path="/var/www/html/wordpress"
service php7.3-fpm start
service php7.3-fpm stop
exec "$@"