FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install bind9 -y

COPY conf/named.conf /etc/bind
COPY conf/named.conf.options /etc/bind/named.conf.options
COPY conf/named.conf.local /etc/bind/named.conf.local

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["named", "-g"]