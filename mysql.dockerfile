FROM mysql
ENV MYSQL_DATABASE register

COPY ./script /docker-entrypoint-initdb.d/
