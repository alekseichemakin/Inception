FROM    debian:buster

RUN     apt-get update \
		    && apt-get upgrade -y \
			&& apt-get -y install mariadb-server php-mysql -y

COPY	my.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	start.sh /tmp
RUN		chmod +x /tmp/start.sh

COPY wp_db.sql /

EXPOSE	3306

CMD		["sh", "/tmp/start.sh"]