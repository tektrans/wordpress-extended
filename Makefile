TAG := ghcr.io/tektrans/wordpress-extended:php8.4

all: build publish

build:
	echo '** BUILDING...'
	podman build --pull=newer -t $(TAG) . && \
	podman run --rm $(TAG) php -m > full-list-of-extensions.txt

publish:
	echo '** PUBLISHING...'
	podman push $(TAG)

clean:
  echo '** REMOVING OLD LOCAL IMAGE...'
	podman image rm $(TAG)
