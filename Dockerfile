
FROM python:2.7.16-alpine3.9

MAINTAINER Arun Corp Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D appuser
USER appuser
