FROM nginx:stable-alpine

LABEL maintainer="jbbodart"

RUN apk -U upgrade \
 && apk add --no-cache apache2-utils

VOLUME /srv
EXPOSE 80
COPY webdav.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /docker-entrypoint.d
RUN chmod +x /docker-entrypoint.d/entrypoint.sh
CMD ["nginx", "-g", "daemon off;"]
