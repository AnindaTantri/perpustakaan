FROM php:7.4.3-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get install -y libpq-dev
RUN a2enmod rewrite
COPY . /var/www/html
