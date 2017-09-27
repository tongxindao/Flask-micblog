FROM jfloff/alpine-python:2.7

MAINTAINER balin <balin1991@qq.com>

ENV PYTHONUNBUFFERED=1 LIBRARY_PATH=/lib:/usr/lib

ADD djangomooc /djangomooc

WORKDIR /djangomooc

RUN apk add --update --no-cache py-mysqldb jpeg-dev zlib-dev && pip install --no-cache -r requirements.txt
