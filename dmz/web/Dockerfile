FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install tzdata net-tools iputils-ping dnsutils curl vim -y
ENV TZ="Europe/Brussels"

RUN apt-get install apache2 php php-cli php-mysql libapache2-mod-php -y

COPY ./index.html /var/www/html/www/
COPY ./b2b.php /var/www/html/b2b/
COPY ./www-m1-5-ephec-ti-be.conf /etc/apache2/sites-available/
COPY ./b2b-m1-5-ephec-ti-be.conf /etc/apache2/sites-available/
COPY ./apache2.conf /etc/apache2/

RUN a2ensite www-m1-5-ephec-ti-be.conf && a2ensite b2b-m1-5-ephec-ti-be.conf

CMD [ "apache2ctl", "-D", "FOREGROUND" ]
