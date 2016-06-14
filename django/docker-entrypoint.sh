#!/bin/sh

exec /usr/local/bin/uwsgi \
     --fastcgi-socket 0.0.0.0:8080 \
     --master \
     --processes 90 \
     --threads 1 \
     --chdir /code \
     --wsgi-file mysite/wsgi.py
