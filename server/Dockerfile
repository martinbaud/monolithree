FROM php:8.1.0-apache

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install pdo_mysql zip

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY . /app
WORKDIR /app

RUN composer install

COPY .env.example .env
RUN php artisan key:generate

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80

CMD ["apache2-foreground"]
