#!/bin/sh

if [ ! -d "/var/lib/mysql/${DB_NAME}" ] ;
then
    service mysql start
    mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}'"
    mysql -u root -e "CREATE DATABASE ${DB_NAME};"
    mysql -u root -e "use ${DB_NAME}; GRANT ALL PRIVILEGES ON * TO '${DB_USER}'@'%'; FLUSH PRIVILEGES;"
    mysql -u root ${DB_NAME} < wp_db.sql
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}'; FLUSH PRIVILEGES;"
fi

/usr/bin/mysqld_safe