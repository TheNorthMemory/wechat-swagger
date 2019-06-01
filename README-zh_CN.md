# 微信服务端接口文档

基于 `Swagger 2.0` 版本的微信服务端接口文档及工具，配合 `swagger-ui` 可作为本地开发者调试工具。

## 说明

1. 纯开发者文档，请访问[这里](https://thenorthmemory.github.io/wechat-swagger)
2. 因 javascript 存在 CORS 限制，如若想使此文档用作调试工具，需要配合简单反向代理服务器，如 `nginx`，简单配置即可在本地测/调 `500+` 开放接口。
3. [微信广告服务商](https://wximg.qq.com/wxp/pdftool/get.html?id=HJ2uqGgXW) 使用了另外一套签名方法，本项目也提供了透明代理解决方案，需使用 `openresty` 配合环境变量运行。

## 本地Docker容器运行时

1. `docker pull openresty/openresty:alpine`
2. `docker run --rm --name wechat-swagger -d -e TSA_AGENCY_ID=$TSA_AGENCY_ID TSA_AGENCY_APIKEY=$TSA_AGENCY_APIKEY -v $PWD/docs:/app -v $PWD/src/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf -p7788:7788 openresty/openresty:alpine nginx`
3. open a browser, visit the `http://127.0.0.1:7788`

Enjoy!

MIT license.
