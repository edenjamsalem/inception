#!/bin/bash

cat > /etc/mysql/init.sql << EOF
CREATE DATABASE ${DB_NAME};
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PWD}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

#mysql_install_db
mysqld
