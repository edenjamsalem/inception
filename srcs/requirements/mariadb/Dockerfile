FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/.

#COPY ./conf/init.sql /etc/mysql/init.sql

COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
