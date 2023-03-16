#Create MySQL Image for JSP Tutorial Application
FROM mysql:5.5
LABEL version="1.0" maintainer="Aguerbaoui Nadia"
ENV MYSQL_ROOT_PASSWORD dev
ENV MYSQL_DATABASE crud_flask
ENV MYSQL_PASSWORD dev
ENV MYSQL_RANDOM_ROOT_PASSWORD yes
ADD ./crud_flask.sql /docker-entrypoint-initdb.d
EXPOSE 3306