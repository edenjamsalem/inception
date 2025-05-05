#!/bin/bash

echo "127.0.0.1 eamsalem.42.fr www.eamsalem.42.fr" >> /etc/hosts

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/eamsalem.key -out /etc/ssl/certs/eamsalem.crt -subj "/C=GB/L=London/O=42London/OU=student/CN=eamsalem.42.fr"

nginx -g "daemon off;"
