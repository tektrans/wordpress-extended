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

## How to use it
See https://hub.docker.com/_/wordpress

## Additional extensions included on this container image
We add these PHP extensions to official WordPress container image:
* ftp
* memcache
* memcached
* redis
* sockets
* ssh2

## Full list of extensions/modules
See [full-list-of-extensions.txt](full-list-of-extensions.txt) file
(from official WordPress container image and our added extensions).

## Need more extensions?
Please submit a [new issue](https://github.com/tektrans/wordpress-extended/issues/new/choose).
