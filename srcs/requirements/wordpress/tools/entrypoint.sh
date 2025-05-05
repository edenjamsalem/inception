#!/bin/bash

sed -i -e 's/listen =.*/listen = wp-php:9000/g' /etc/php/7.4/fpm/pool.d/www.conf

cd /var/www/html
rm -fr /var/www/html/*

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create \
	--dbname=${DB_NAME} \
	--dbuser=${MYSQL_USER} \
	--dbpass=${MYSQL_PWD} \
	--dbhost=${MYSQL_HOST} \
	--allow-root

./wp-cli.phar core install \
	--url=${WP_URL} \
	--title=${WP_TITLE} \
	--admin_user=${WP_ADMIN} \
	--admin_password=${WP_ADMIN_PWD} \
	--admin_email=${WP_ADMIN_EMAIL} \
	--allow-root

./wp-cli.phar user create ${WP_USER} ${WP_USER_EMAIL} \
       	--user_pass=${WP_USER_PWD} \
       	--role=author \
       	--allow-root

/usr/sbin/php-fpm7.4 -F
