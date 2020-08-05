FROM domingosjunior87/php5.3.29:latest

MAINTAINER Domingos Coelho <domingosjunior87@gmail.com>

COPY docker-php-* /usr/local/bin/

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
 	libxml2-dev \
 	libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    libpq-dev \
#    libmagickwand-dev \
#    libmagickwand-6.q16-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir /usr/include/freetype2/freetype \ 
 && ln -s /usr/include/freetype2/freetype.h /usr/include/freetype2/freetype/freetype.h \
 && chmod -R 777 /usr/local/bin \
 && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install gd mbstring pgsql pdo_pgsql

EXPOSE 80