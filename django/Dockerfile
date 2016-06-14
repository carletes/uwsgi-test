FROM python:2.7.10

RUN /usr/sbin/groupadd --system www && /usr/sbin/useradd --system -g www www

COPY django/code/ /code/
RUN pip install -r /code/requirements.txt \
    && rm -rf /root/.cache

COPY django/docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT /docker-entrypoint.sh

USER www
