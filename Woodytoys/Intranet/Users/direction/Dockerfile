FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt-get install -y mutt dnsutils iputils-ping net-tools nano smbclient cifs-utils

RUN mkdir -p /mnt/sambaFolder/direction
RUN mkdir -p /mnt/sambaFolder/commun

# RUN mount -t cifs //samba/home -o username=directionUser1,password=directionPassword /home/usr
# RUN mount -t cifs //samba/direction -o username=directionUser1,password=directionPassword /mnt/sambaFolder/direction
# RUN mount -t cifs //samba/commun /mnt/sambaFolder/commun