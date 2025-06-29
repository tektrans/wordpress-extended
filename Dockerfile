FROM docker.io/wordpress:6.8.1-php8.4-apache

RUN apt update
RUN apt upgrade

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN \
  install-php-extensions \
    ftp \
    memcache \
    memcached \
    redis \
    sockets \
    ssh2

RUN php -m

LABEL org.opencontainers.image.title="wordpress-extended" 
LABEL org.opencontainers.image.description="WordPress extended image with additional PHP extensions"
LABEL org.opencontainers.image.url="https://github.com/tektrans/wordpress-extended"
LABEL org.opencontainers.image.source="https://github.com/tektrans/wordpress-extended"
LABEL org.opencontainers.image.authors="adhisimon@tektrans.id"
LABEL org.opencontainers.image.vendor="TEKTRANS"
LABEL org.opencontainers.image.licenses="gpl3"
