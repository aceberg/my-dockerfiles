FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
	apt -y install software-properties-common zip unzip git apache2 \
				   php7.4 php7.4-mbstring php7.4-zip libapache2-mod-php7.4 && \
	apt clean

RUN a2enmod rewrite && \
	rm /var/www/html/* && \
	git clone https://github.com/Atheos/Atheos /var/www/html

ENV APACHE_RUN_USER myuser

RUN adduser --uid 1000 --gecos 'Atheos user' --disabled-password myuser && \
	mkdir /data && \
	chown -R 1000:1000 /var/www/html && \
	chown -R 1000:1000 /data && \
	chown -R 1000:1000 /var/lock/apache2 /var/run/apache2 /var/log/apache2

ENTRYPOINT ["apachectl","-D","FOREGROUND"]
