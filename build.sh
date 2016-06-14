#!/usr/bin/env bash

here="$(cd $(dirname $0) && pwd)"

(cd $here &&
    env http_proxy="$http_proxy" \
        https_proxy="$https_proxy" \
        docker-compose build)
