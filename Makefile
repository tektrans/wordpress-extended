build:
	echo building...
	podman build -t ghcr.io/tektrans/wordpress-extended:php8.4 .
	podman run --rm ghcr.io/tektrans/wordpress-extended:php8.4 php -m > full-list-of-extensions.txt

publish:
	echo publishing...
	podman push ghcr.io/tektrans/wordpress-extended:php8.4
