FROM python:3.9.0
MAINTAINER Victor Developer Back-end

ENV PYTHONUNBUFFERED 1

#COPY ./requirements.txt /requirements.txt
#RUN apk add --update --no-cache postgresql-client
#RUN apk add --update --no-cache --virtual .tmp-build-deps \
      #  gcc libc-dev linux-headers postgresql-dev

#RUN pip install -r /requirements.txt
#RUN apk del .tmp-build-deps


RUN mkdir /ap
WORKDIR /app
COPY ./app /app

RUN  adduser --disabled-password user
USER user