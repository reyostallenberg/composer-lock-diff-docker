FROM composer:1.9.3

RUN composer global require davidrjonas/composer-lock-diff:^1.0@dev

RUN ls -lah /tmp

RUN cp /tmp/vendor/davidrjonas/composer-lock-diff/composer-lock-diff /usr/local/bin/composer-lock-diff

ENTRYPOINT ["composer-lock-diff"]
