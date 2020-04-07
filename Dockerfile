FROM nginx:alpine
# COPY default.conf /etc/nginx/conf.d/default.conf
#COPY index.html /usr/share/nginx/html/index.html

RUN set -xe; \
    \
    apk add --update --no-cache \
        bash \
        ca-certificates \
        curl \
        gzip \
        tar \
        unzip \
        wget; \
    \
    rm -rf /var/cache/apk/*

CMD ["nginx", "-g", "daemon off;"]
