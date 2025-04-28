FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
	php-fpm \
	php-mysqli \
	curl

RUN mkdir -p /run/php && chmod 777 /run/php

COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

