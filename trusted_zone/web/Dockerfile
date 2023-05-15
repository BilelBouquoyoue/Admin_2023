FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install tzdata net-tools iproute2 iputils-ping dnsutils curl vim -y
ENV TZ="Europe/Brussels"

RUN apt-get install apache2 php php-cli php-mysql libapache2-mod-php -y

COPY ./index.php /var/www/html/
COPY ./www-woodytoys-lab.conf /etc/apache2/sites-available/
COPY ./apache2.conf /etc/apache2/

RUN a2ensite www-woodytoys-lab.conf

CMD [ "apache2ctl", "-D", "FOREGROUND" ]
