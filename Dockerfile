#nurlan1992/php Dockerfile
FROM php:7.1-apache

RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libjpeg-dev\
    libpng-dev\
    libfreetype6-dev \
    libpq-dev \
    libicu-dev g++

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install pdo pdo_mysql mysqli zip gd intl

WORKDIR /var/www/html/
