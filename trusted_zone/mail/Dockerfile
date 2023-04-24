FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get install tzdata net-tools iputils-ping dnsutils curl vim -y
ENV TZ="Europe/Brussels"

RUN adduser --disabled-password toto && adduser --disabled-password tutu && usermod -aG sudo toto && usermod -aG sudo tutu
RUN apt-get install telnet postfix dovecot-imapd -y

COPY ./main.cf /etc/postfix/
COPY ./dovecot.conf /etc/dovecot/

CMD [ "bash", "-c", "postfix start && dovecot && tail -f /dev/null" ]
