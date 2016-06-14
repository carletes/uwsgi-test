FROM httpd:2.2

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

RUN mkdir -p /usr/local/apache2/logs

VOLUME ["/usr/local/apache2/logs"]
