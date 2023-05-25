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


# Dossier pour stocker les clés DNSSEC
RUN mkdir /etc/bind/keys

# Génération des clés de signature DNSSEC
RUN dnssec-keygen -a RSASHA256 -b 2048 -n ZONE m1-5.ephec-ti.be
RUN dnssec-keygen -a RSASHA256 -b 2048 -n ZONE -f KSK m1-5.ephec-ti.be


CMD [ "named", "-g" ]
