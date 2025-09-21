ARG FROM
FROM ${FROM}

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt -y install libapache2-mod-security2 less

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN \
  install-php-extensions \
    ftp \
    memcache \
    memcached \
    redis \
    sockets \
    ssh2 && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

ARG REVISION

LABEL \
  org.opencontainers.image.title="wordpress-extended" \
  org.opencontainers.image.description="WordPress extended image with additional PHP extensions" \
  org.opencontainers.image.url="https://github.com/tektrans/wordpress-extended" \
  org.opencontainers.image.revision="${REVISION}" \
  org.opencontainers.image.source="https://github.com/tektrans/wordpress-extended" \
  org.opencontainers.image.authors="Adhidarma Hadiwinoto  <adhisimon@tektrans.id>" \
  org.opencontainers.image.vendor="TEKTRANS" \
  org.opencontainers.image.licenses="GPL-3.0-or-later"
