#Create MySQL Image for JSP Tutorial Application
FROM mysql
LABEL version="1.0" maintainer="Aguerbaoui Nadia"
ENV MYSQL_ROOT_PASSWORD dev
ENV MYSQL_DATABASE crud_flask
ENV MYSQL_PASSWORD dev
ADD ./crud_flask.sql /docker-entrypoint-initdb.d
EXPOSE 3306