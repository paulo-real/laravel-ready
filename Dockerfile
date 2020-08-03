FROM php:7.4-fpm-buster

LABEL Maintainer="Paulo Real <contact@pauloreal.com>" \
      Description="Laravel (and Lumen) ready image php:7.4-fpm-buster based"


ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    locales libaio1 libpng-dev libpq-dev libzip-dev \
    unzip zip \
    git curl \
    vim

RUN apt-get update -y && apt-get upgrade -y && apt-get autoremove -y

# Install extensions
RUN docker-php-ext-install gd zip pcntl

# Install phpredis extension
RUN pecl install -o -f redis && docker-php-ext-enable redis
RUN echo 'vm.overcommit_memory = 1' >> /etc/sysctl.conf

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory permissions
COPY --chown=www:www . /var/www/html

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
