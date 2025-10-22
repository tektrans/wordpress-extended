# wordpress-extended

[![Static Badge](https://img.shields.io/badge/containerized_by-tektrans-blue)](https://tektrans.id)

Unofficial WordPress extended container image with additional PHP extensions

Based on: [docker.io/wordpress:6-php8.4-apache](https://hub.docker.com/_/wordpress)

Our release image:
```
ghcr.io/tektrans/wordpress-extended
```

If you are using podman, you can pull it by:
```shell
podman pull ghcr.io/tektrans/wordpress-extended:latest
```

or if you are using docker:

```shell
docker pull ghcr.io/tektrans/wordpress-extended:latest
```

## Background motivation
Why we create this container image?

It started when we move our customer's wordpress site from a VM on a cloud provider
to our infrastrucure.

We don't like to create a new VM with traditional PHP stack.
We love container and fortunately there is a 
[WordPress docker official image](https://hub.docker.com/_/wordpress).

That official image is very minimalist. No blame for that.
That was one of philosophy on containerization.
But we need some PHP extensions which are not included on that container.

Official image provide instruction how to extends the container
to add some extensions and we do that.

We just want to share the container we produced.
Maybe it can be usefull for some people.
Here it is.

## How to use it
See https://hub.docker.com/_/wordpress

You can also look at our ["Podman Quadlet example"](examples/quadlet/).

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

A "star" from you for this repository is very much appreciated,
so we know someone use this container image happily.

We will try to update (rebuild) this container image periodically
to sync with [upstream (docker.io/wordpress:6-php8.4-apache)](https://hub.docker.com/_/wordpress)
and do "apt update/upgrade".
