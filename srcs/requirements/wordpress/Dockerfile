FROM debian:buster

RUN     apt-get update \
			&& apt-get install php7.3-fpm php-mysql php-common php wget -y

RUN mkdir -p /var/www/wordpress

RUN		wget https://wordpress.org/latest.tar.gz	&& \
		tar -xvf latest.tar.gz						&& \
		rm -rf latest.tar.gz						&& \
		mv wordpress/* /var/www/wordpress/						


RUN		rm -f /var/www/wordpress/wp-config-sample.php

COPY	wp-config.php /var/www/wordpress/

COPY	www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY	start.sh ./
RUN     chmod +x ./start.sh

EXPOSE		9000

CMD     ["sh", "./start.sh"]