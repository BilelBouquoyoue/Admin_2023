FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install tzdata net-tools iproute2 iputils-ping dnsutils curl vim -y
ENV TZ="Europe/Brussels"

RUN apt-get install bind9 -y
RUN mkdir -p /var/log/named/

COPY ./named.conf /etc/bind/
COPY named.conf.options /etc/bind/named.conf.options
COPY ./m1-5.ephec-ti.be.zone /etc/bind/
COPY ./m1-5.ephec-ti.be.reverse.zone /etc/bind/

# Ajout des clés DNSSEC
COPY Km1-5.ephec-ti.be.+007+xxxxx.key /etc/bind/
COPY Km1-5.ephec-ti.be.+007+xxxxx.private /etc/bind/

# Définition des autorisations sur les clés
RUN chown bind:bind /etc/bind/Km1-5.ephec-ti.be.+007+xxxxx.key
RUN chmod 400 /etc/bind/Km1-5.ephec-ti.be.+007+xxxxx.private

CMD [ "named", "-g" ]
