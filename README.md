# wordpress-extended
Unofficial WordPress extended container image with additional PHP extensions

Based on: [docker.io/wordpress:6.8.1-php8.4-apache](https://hub.docker.com/_/wordpress)

Our release image:
```
ghcr.io/tektrans/wordpress-extended:php8.4
```

If you are using podman, you can pull it by:
```shell
podman pull ghcr.io/tektrans/wordpress-extended:php8.4
```

or if you are using docker:

```shell
docker pull ghcr.io/tektrans/wordpress-extended:php8.4
```

## Background motivation
Why we create this container image?

It started when we move our customer's wordpress site from a VM on a cloud provider
to our infrastrucure.

We don't like to create a new VM with traditional PHP stack.
We love container and fortunately there is a 
[WordPress docker official image](https://hub.docker.com/_/wordpress).

That official image is very minimalist. No blame for that.
That was a philosophy of containerization.
But we need some PHP extensions which are not included on that container.

Official image provide instruction how to extends the container
to add some extensions and we do that.

We just want to share the container we produced.
Maybe it can be usefull for some people.
Here it is.

## How to use it
See https://hub.docker.com/_/wordpress

## Additional modules/extensions included on this container image
We add some Apache2 module and PHP extensions on this container image.

Additional Apache2 module:
* libapache2-mod-security2

Additional PHP extensions:
* ftp
* memcache
* memcached
* redis
* sockets
* ssh2

## Full list of extensions/modules
* [Installed Apache2 modules](apache2-modules.txt)
* [Installed PHP extensions](php-extensions.txt)

## Need more extensions?
Please submit a [new issue](https://github.com/tektrans/wordpress-extended/issues/new/choose).

## Note
This container image produced and maintained by
[PT TEKNOLOGI TRANSAKSI DIGITAL (TEKTRANS)](https://tektrans.id).

We don't have any affiliate with 
[Automattic](https://automattic.com/)
and
[WordPress Foundation](https://wordpressfoundation.org/)
who owns and oversees the trademark for the names of WordPress.

Please feel free to use this container image but we have no responsibility neither support.
Any questions please be sent by opening a
[new issue](https://github.com/tektrans/wordpress-extended/issues/new/choose).
