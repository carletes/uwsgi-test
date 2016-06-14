FROM python:2.7.10

RUN /usr/sbin/groupadd --system www && /usr/sbin/useradd --system -g www www

COPY django/code/requirements.txt /code/requirements.txt
RUN pip install -r /code/requirements.txt \
    && rm -rf /root/.cache

COPY django/code/ /code/

COPY django/docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT /docker-entrypoint.sh

EXPOSE 3000

USER www
