FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/default /etc/nginx/sites-available/

COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
