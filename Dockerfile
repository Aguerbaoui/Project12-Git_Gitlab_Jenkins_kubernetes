FROM python:3.8-slim-buster
#WORKDIR /app
# Copy the requirements file into the container
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt .
# Install the required packages
RUN pip install  --no-cache-dir  -r requirements.txt
COPY . .
# Expose the port that the application will run on
EXPOSE 5000
ENV FLASK_APP=server.py
# Set the command to run the application
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]