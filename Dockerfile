FROM php:7-alpine
RUN apk add --no-cache git
COPY --from=composer:1.10.20 /usr/bin/composer /usr/bin/composer
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["composer"]
