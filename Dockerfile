FROM python:3.8-slim-buster
RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev gcc && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV FLASK_APP=server.py
ENV FLASK_ENV=development
ENV MYSQL_DATABASE_HOST=mysqlflaskservice
ENV MYSQL_DATABASE_PORT=3306
ENV MYSQL_DATABASE_USER=root
ENV MYSQL_DATABASE_PASSWORD=dev
ENV MYSQL_DATABASE_DB=crud_flask
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
