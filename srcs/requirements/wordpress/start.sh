#!/bin/sh

sed -i 's/database_name_here/'${DB_NAME}'/g' /var/www/wordpress/wp-config.php
sed -i 's/username_here/'${DB_USER}'/g' /var/www/wordpress/wp-config.php
sed -i 's/password_here/'${DB_PASSWORD}'/g' /var/www/wordpress/wp-config.php
sed -i 's/host_here/'${DB_HOST}'/g' /var/www/wordpress/wp-config.php

chmod   -R 755 /var/www/wordpress/
chown   -R www-data /var/www/wordpress/

service php7.3-fpm start

service php7.3-fpm stop

/usr/sbin/php-fpm7.3 -F -R