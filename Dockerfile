FROM node:alpine as builder

WORKDIR /app

COPY . /app/

RUN set -ex \
  && npm install js-yaml -g \
  && apk add --no-cache jq \
  && sh ./bin/gen.sh \
  && js-yaml ./docs/swagger.yaml | jq -Mc | tee ./docs/swagger.json \
  && js-yaml ./docs/wxpay.yaml | jq -Mc | tee ./docs/wxpay.json \
  && sed -i 's@wxpay.yaml@wxpay.json@g' ./docs/swagger.json ./docs/wxpay.json \
  && sed -i 's@swagger.yaml@swagger.json@g' ./docs/index.html \
  && sed -i 's@\(root\s\+\)/app;@\1html;@' src/nginx.conf

FROM openresty/openresty:alpine

LABEL maintainer="James Zhang <thenorthmemory@dingtalk.com>"

COPY --from=builder /app/docs/index.html /app/docs/swagger.json /app/docs/wxpay.json /usr/local/openresty/nginx/html/
COPY --from=builder /app/src/nginx.conf /usr/local/openresty/nginx/conf/

EXPOSE 7788

CMD ["openresty"]