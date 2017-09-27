FROM jfloff/alpine-python:2.7

MAINTAINER balin <balin1991@qq.com>

ENV PYTHONUNBUFFERED=1

ADD ./micblog /micblog

WORKDIR /micblog

RUN apk add --update sqlite && pip install --no-cache -r requirements.txt
