#!/bin/sh

exec /usr/local/bin/uwsgi \
     --fastcgi-socket 0.0.0.0:3000 \
     --master \
     --processes 4 \
     --threads 1 \
     --chdir /code \
     --wsgi-file mysite/wsgi.py
