WP_VER=6.8.1
PHP_VER=8.4

FROM := docker.io/wordpress:$(WP_VER)-php$(PHP_VER)-apache
TAG := ghcr.io/tektrans/wordpress-extended:php$(PHP_VER)

all:
	make build && make publish

build:
	echo '** BUILDING...'
	podman build --pull=newer -t $(TAG) --build-arg FROM=$(FROM) . && \
	podman run --rm $(TAG) php -m > full-list-of-extensions.txt

publish:
	echo '** PUBLISHING...'
	podman push $(TAG)

clean:
	podman image rm $(TAG)
