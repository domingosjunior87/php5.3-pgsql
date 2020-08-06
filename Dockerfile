FROM domingosjunior87/php5.3.29:latest

MAINTAINER Domingos Coelho <domingosjunior87@gmail.com>

COPY docker-php-* /usr/local/bin/

RUN apt-get update \
 && apt-get install -y \
 	libpq5 \
    libpq-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && chmod -R 777 /usr/local/bin \
 && docker-php-ext-install pgsql pdo_pgsql

EXPOSE 80