FROM tiredofit/nginx-php-fpm:alpine-8.0

LABEL Maintainer="Francis Wallinger <francis.wallinger@me.com>" \
      Description="Nginx 1.21 & PHP-FPM 8.0.x / Alpine"

COPY config/localhost.* /tmp/

COPY app /www/html

VOLUME ["/var/app_data"]
