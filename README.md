# wechat api swagger integration

An easy way to document/play/debug the wechat api using the swagger-ui.

## usage

1. It's only need a http server to host the dist folder as the document root, then that's act as a documentation server.
2. Using the http reverse proxy with http rewrite features, that's act as the wechat API server.

## quickly run in docker

1. `docker pull openresty/openresty:alpine`
2. `docker run --rm --name wechat-swagger -d -e TSA_AGENCY_ID=$TSA_AGENCY_ID TSA_AGENCY_APIKEY=$TSA_AGENCY_APIKEY -v $PWD/docs:/app -v $PWD/src/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf -p7788:7788 openresty/openresty:alpine nginx`
3. open a browser, visit the `http://127.0.0.1:7788`

Enjoy!

MIT license.
