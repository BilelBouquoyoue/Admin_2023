FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install tzdata net-tools iproute2 iputils-ping dnsutils curl vim -y
ENV TZ="Europe/Brussels"

RUN apt-get install bind9 -y
RUN mkdir -p /var/log/named/

COPY ./named.conf /etc/bind/
COPY ./m1-5.ephec-ti.be.zone /etc/bind/
COPY ./m1-5.ephec-ti.be.reverse.zone /etc/bind/


CMD [ "named", "-g" ]
