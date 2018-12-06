# Dockerfile Tutorial for Reading Group - Dec 6th, 2018

# Can also use 14.04, 16.04, 18.04 etc
FROM ubuntu:latest

MAINTAINER WYNR Reading Group <nobody@yelp.com>

# Defining env variables
ENV port=1234

# Linux things
RUN apt-get update
RUN apt-get -y install python-pip python-dev build-essential 
RUN pip install Flask

# What the Dockerfile runs on start
# Needs at least one ENTRYPOINT or CMD command
EXPOSE $port

RUN apt-get install -y curl
RUN curl http://localhost:$port

# TODO: Setup flask server and pikachu meme, hit flask server and get a response
# BUILD COMMAND: docker build -t test:latest .
