FROM python:3.5-alpine

WORKDIR /app

COPY source_code/ /app
RUN pip install -r requirements.txt


EXPOSE 5000
ENTRYPOINT [ "python", "server.py" ]