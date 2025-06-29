FROM := docker.io/wordpress:6.8.1-php8.4-apache
TAG := ghcr.io/tektrans/wordpress-extended:php8.4

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
