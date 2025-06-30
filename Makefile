WP_VER=6.8.1
PHP_VER=8.4

FROM := docker.io/wordpress:$(WP_VER)-php$(PHP_VER)-apache
TAG := ghcr.io/tektrans/wordpress-extended:php$(PHP_VER)

CREATED=`date --iso-8601=seconds -u`
REVISION=`git rev-parse HEAD`

all:
	make build && make publish

build:
	echo '** BUILDING...'
	podman build --pull=newer -t $(TAG) \
		--build-arg FROM=$(FROM) \
		--build-arg CREATED=$(CREATED) \
		--build-arg REVISION=$(REVISION) \
		--annotation=org.opencontainers.image.title=wordpress-extended \
		--annotation=org.opencontainers.image.description="WordPress extended image with additional PHP extensions" \
		--annotation=org.opencontainers.image.created="$(CREATED)" \
		--annotation=org.opencontainers.image.revision="$(REVISION)" \
		--annotation=org.opencontainers.image.url="https://github.com/tektrans/wordpress-extended" \
		--annotation=org.opencontainers.image.source="https://github.com/tektrans/wordpress-extended" \
		--annotation=org.opencontainers.image.authors="Adhidarma Hadiwinoto <adhisimon@tektrans.id>" \
		--annotation=org.opencontainers.image.vendor=TEKTRANS \
		--annotation=org.opencontainers.image.licenses=gpl3 \
		. && \
	podman run --rm $(TAG) php -m > php-extensions.txt && \
	podman run --rm $(TAG) apachectl -M > apache2-modules.txt 2>/dev/null

publish:
	echo '** PUBLISHING...'
	podman push $(TAG)

clean:
	podman image rm $(TAG)
