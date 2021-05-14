FROM python:3.9.0
MAINTAINER Victor Developer Back-end

ENV PYTHONUNBUFFERED 1

RUN pip install poetry

COPY poetry.lock pyproject.toml ./

RUN poetry export -f requirements.txt --output requirements.txt

RUN pip install -r requirements.txt

RUN mkdir /ap
WORKDIR /app
COPY ./app /app

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
RUN  adduser --disabled-password user
RUN chown -R user:user /vol/
RUN chmod -R 755 /vol/web
USER user



