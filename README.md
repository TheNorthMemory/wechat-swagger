# wechat api swagger integration

An easy way to document/play/debug the wechat api using the swagger-ui.

## usage

1. It's only need a http server to host the dist folder as the document root, then that's act as a documentation server.
2. Using the http reverse proxy with http rewrite features, that's act as the wechat API server.

## quickly run in docker

1. `docker pull nginx`
2. `docker run --rm --name wechat-swagger -d -v $PWD/dist:/app -v $PWD/src/nginx.conf:/etc/nginx/nginx.conf -p7788:7788 nginx nginx`
3. open a browser, visit the `http://127.0.0.1:7788`

Enjoy!

MIT license.