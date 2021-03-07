FROM python:3.7-alpine
MAINTAINER Victor Developer Back-end

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt


RUN mkdir /ap
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user