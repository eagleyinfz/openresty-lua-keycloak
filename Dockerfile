FROM openresty/openresty:1.15.8.2-7-alpine-fat

RUN luarocks install lua-resty-openidc

COPY lua-resty-keycloak /usr/local/openresty/nginx/conf/lua-resty-keycloak

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
