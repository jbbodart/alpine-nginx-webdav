# alpine-nginx-webdav
Simple nginx based webdav server for Keepass.

## How to use this image
```console
$ docker run --name keepass-webdav -p 80:80 -v /path/to/your/keepass/files/:/srv/ -d jbbodart/alpine-nginx-webdav
```

No built-in TLS support. Reverse proxy with TLS recommended

## Volumes
- `/srv` - served directory

## Authentication
To restrict access to only authorized users (recommended), you can define two environment variables: `$USERNAME` and `$PASSWORD`
```console
$ docker run --name webdav -p 80:80 -v /path/to/your/keepass/files/:/srv/ -e USERNAME=webdav -e PASSWORD=webdav -d jbbodart/alpine-nginx-webdav

```
