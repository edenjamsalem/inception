#!/bin/bash

sed -i -e 's/listen =.*/listen = wp-php:9000/g' /etc/php/7.4/fpm/pool.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then

	cd /var/www/html
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
fi

/usr/sbin/php-fpm7.4 -F
