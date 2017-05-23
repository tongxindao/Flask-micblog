FROM alpine:latest

MAINTAINER balin <balin1991@qq.com>

COPY ./Flask-micblog /micblog

RUN apk add --update bash git nginx sqlite uwsgi uwsgi-python py2-pip \
	&& pip2 install --upgrade pip \
	&& pip2 install --no-cache -r /micblog/requirements.txt \
	&& chown -R nginx:nginx /micblog \
	&& chmod 777 /run/ -R \
	&& chmod 777 /root/ -R

EXPOSE 80

COPY __init__.py /usr/lib/python2.7/site-packages/flask_sqlalchemy/__init__.py

COPY micblog.crt /etc/ssl/

COPY micblog.key /etc/ssl/

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["uwsgi", "/micblog/uwsgi.ini"]
