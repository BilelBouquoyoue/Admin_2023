FROM mariadb

ENV MYSQL_ROOT_PASSWORD=super-secret-passwd
ENV MYSQL_DATABASE=woodytoys

COPY ./init.sql /docker-entrypoint-initdb.d/
