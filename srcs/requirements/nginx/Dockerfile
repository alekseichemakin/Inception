FROM    debian:buster

RUN     apt-get update \
		    && apt-get upgrade -y \
			&& apt-get -y install nginx openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=21school/CN=mqueen" -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt;

RUN rm -rf /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/

CMD ["nginx", "-g", "daemon off;"]