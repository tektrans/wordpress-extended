dump-extensions:
	podman run --rm ghcr.io/tektrans/wordpress-extended:php8.4 php -m > full-list-of-extensions.txt

build:
	echo building...
	podman build -t ghcr.io/tektrans/wordpress-extended:php8.4 .

publish:
	echo publishing...
	podman push ghcr.io/tektrans/wordpress-extended:php8.4
