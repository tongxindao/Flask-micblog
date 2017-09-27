FROM smebberson/alpine-nginx:latest

MAINTAINER balin <balin1991@qq.com> 

RUN rm /etc/nginx/conf.d/default.conf && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

ADD default.conf /etc/nginx/conf.d/
