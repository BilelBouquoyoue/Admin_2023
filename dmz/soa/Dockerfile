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
COPY ./m1-5.ephec-ti.be.zone.signed /etc/bind/
COPY ./m1-5.ephec-ti.be.reverse.zone /etc/bind/

# Ajout des étapes pour générer les clés DNSSEC
RUN apt-get install dnssec-tools -y
RUN dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE m1-5.ephec-ti.be
RUN dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE m1-5.ephec-ti.be
RUN mv K*.private /etc/bind/
RUN chown bind:bind /etc/bind/K*.private


CMD [ "named", "-g" ]
