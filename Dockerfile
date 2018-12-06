# Dockerfile Tutorial for Reading Group - Dec 6th, 2018

# Can also use 14.04, 16.04, 18.04 etc
FROM ubuntu:latest

MAINTAINER WYNR Reading Group <nobody@yelp.com>

WORKDIR /app
COPY app.py /app/app.py
COPY wow.txt /app/wow.txt

# Defining env variables
ENV port=5000

# Linux things
RUN apt-get update

# Install pip and its dependencies
RUN apt-get -y install python-pip python-dev build-essential

# Usually we have a requirements.txt file but we only need Flask so:
RUN pip install Flask

# The most important of commands
RUN cat wow.txt

CMD python -m flask run --host=0.0.0.0
