FROM mysql:5.7

WORKDIR /var/lib/mysql/

ENV MYSQL_ROOT_PASSWORD-Senha321

ENV MYSQL_DATABASE-nossobanco

ADD sql.sql /docker-entrypoint-initdb.d

EXPOSE 3306