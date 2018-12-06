# Dockerfile Tutorial for Reading Group - Dec 6th, 2018

# Can also use 14.04, 16.04, 18.04 etc
FROM ubuntu:latest

MAINTAINER WYNR Reading Group <nobody@yelp.com>

WORKDIR /app
COPY app.py /app/app.py

# Defining env variables
ENV flask_app=app.py

# Linux things
RUN apt-get update

# Install pip and its dependencies
RUN apt-get -y install python-pip python-dev build-essential

# Usually we have a requirements.txt file but we only need Flask so:
RUN pip install Flask

ENTRYPOINT python -m
CMD flask run

#########################################################################
EXPOSE $port

RUN apt-get install -y curl
RUN curl http://localhost:$port

# TODO: Setup flask server and pikachu meme, hit flask server and get a response
# BUILD COMMAND: docker build -t test:latest .
