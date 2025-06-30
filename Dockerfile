ARG FROM
FROM ${FROM}

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install libapache2-mod-security2 -y && apt upgrade -y

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN \
  install-php-extensions \
    ftp \
    memcache \
    memcached \
    redis \
    sockets \
    ssh2

RUN apt clean

ARG CREATED
ARG REVISION

LABEL org.opencontainers.image.title="wordpress-extended" 
LABEL org.opencontainers.image.description="WordPress extended image with additional PHP extensions"
LABEL org.opencontainers.image.url="https://github.com/tektrans/wordpress-extended"
LABEL org.opencontainers.image.created="${CREATED}"
LABEL org.opencontainers.image.revision="${REVISION}"
LABEL org.opencontainers.image.source="https://github.com/tektrans/wordpress-extended"
LABEL org.opencontainers.image.authors="Adhidarma Hadiwinoto  <adhisimon@tektrans.id>"
LABEL org.opencontainers.image.vendor="TEKTRANS"
LABEL org.opencontainers.image.licenses="gpl3"
