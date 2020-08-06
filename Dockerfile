FROM domingosjunior87/php5.3.29:latest

MAINTAINER Domingos Coelho <domingosjunior87@gmail.com>

COPY docker-php-* /usr/local/bin/

RUN chmod a+x /usr/local/bin/docker-php-ext-configure

RUN chmod a+x /usr/local/bin/docker-php-ext-install

RUN chmod a+x /usr/local/bin/docker-php-ext-configure

RUN chmod a+x /usr/local/bin/docker-php-ext-enable

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
 	libxml2-dev \
    libpq-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && chmod -R 777 /usr/local/bin \
 && docker-php-ext-install pgsql pdo_pgsql

EXPOSE 80