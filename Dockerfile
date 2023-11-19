FROM php:8.2-cli-alpine

LABEL org.opencontainers.image.authors="Artefak <the4rtefak@gmail.com>"

RUN apk --no-cache add curl wget \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
    && composer global require laravel/installer

WORKDIR /opt

CMD [ "/bin/sh" ]
ENTRYPOINT [ "/bin/sh", "-c" ]