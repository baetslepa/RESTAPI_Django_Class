FROM python:3.10-rc-alpine
MAINTAINER Otis Tank and Walter

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt:wq:wq


RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

