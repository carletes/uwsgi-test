FROM httpd:2.2

RUN groupadd -r apache && useradd -r -d /home/apache -m -g apache apache

RUN buildDeps=' \
      curl \
      gcc \
      make \
    ' \
    set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends $buildDeps \
    && cd /tmp \
    && curl http://download.ecmwf.org/eccharts/software/mod_fastcgi-SNAP-0910052141.tar.gz | tar xvzf -\
    && cd mod_fastcgi-SNAP-0910052141 \
    && cp Makefile.AP2 Makefile \
    && make top_dir=/usr/local/apache2 \
    && make top_dir=/usr/local/apache2 install \
    && cd / \
    && rm -rf /tmp/mod_fastcgi-SNAP-0910052141 \
    && apt-get purge -y --auto-remove $buildDeps \
    && rm -r /var/lib/apt/lists/*

COPY apache/httpd.conf /usr/local/apache2/conf/httpd.conf

RUN mkdir -p \
    /usr/local/apache2/logs \
    /data/apache/fcgi-bin \
    /data/apache/htdocs

RUN echo "#!/bin/sh" > /data/apache/fcgi-bin/app \
    && chmod 0755 /data/apache/fcgi-bin/app

VOLUME ["/usr/local/apache2/logs"]

EXPOSE 8080
