FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt-get install -y mutt dnsutils iputils-ping net-tools nano smbclient cifs-utils

RUN mkdir -p /mnt/sambaFolder/commerciaux
RUN mkdir -p /mnt/sambaFolder/commun

# RUN mount -t cifs //samba/home -o username=commerciauxUser1,password=commerciauxPassword /home/usr
# RUN mount -t cifs //samba/commerciaux -o username=commerciauxUser1,password=commerciauxPassword /mnt/sambaFolder/commerciaux
# RUN mount -t cifs //samba/commun /mnt/sambaFolder/commun
