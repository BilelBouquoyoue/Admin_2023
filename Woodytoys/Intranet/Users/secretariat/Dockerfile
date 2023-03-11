FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt-get install -y mutt dnsutils iputils-ping net-tools nano smbclient cifs-utils

RUN mkdir -p /mnt/sambaFolder/secretariat
RUN mkdir -p /mnt/sambaFolder/commun

# RUN mount -t cifs //samba/home -o username=secretariatUser1,password=secretariatPassword /home/usr
# RUN mount -t cifs //samba/secretariat -o username=secretariatUser1,password=secretariatPassword /mnt/sambaFolder/secretariat
# RUN mount -t cifs //samba/commun /mnt/sambaFolder/commun