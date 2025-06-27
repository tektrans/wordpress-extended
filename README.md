# wordpress-extended
Unofficial WordPress extended container image with additional PHP extensions

Based on: [docker.io/wordpress:6.8.1-php8.4-apache](https://hub.docker.com/_/wordpress)

```shell
podman pull ghcr.io/tektrans/wordpress-extended:php8.4
```

or if you are using docker:

```shell
docker pull ghcr.io/tektrans/wordpress-extended:php8.4
```

## Additional extensions
* ftp
* memcache
* memcached
* redis
* sockets
* ssh2

## Full list of extensions/modules
See [full-list-of-extensions.txt](full-list-of-extensions.txt) file.

## Need more extensions?
Please submit a [new issue](https://github.com/tektrans/wordpress-extended/issues/new/choose).
