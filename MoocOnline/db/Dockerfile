FROM pluie/alpine-mysql

MAINTAINER balin <balin1991@qq.com>

ADD djangomooc.sql /tmp/

ENV MYSQL_DATABASE=djangomooc \
    MYSQL_USER=toby \
    MYSQL_PASSWORD=toby2017 \
    MYSQL_ROOT_PASSWORD=toby2017

CMD ["/bin/bash","-c","mysql -utoby -ptoby2017 djangomooc < /tmp/djangomooc.sql && rm /tmp/djangomooc.sql"]
