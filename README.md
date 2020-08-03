[![Docker Hub; pauloreal/laravel-ready](https://img.shields.io/badge/docker%20hub-pauloreal%2Flaravel--ready-blue.svg?&logo=docker&logoColor=white&style=for-the-badge)](https://hub.docker.com/r/pauloreal/laravel-ready)
[![](https://badges.weareopensource.me/docker/image-size/pauloreal/laravel-ready/latest?style=for-the-badge)](https://github.com/paulorealdev)

[![Php 7.4.8](https://img.shields.io/badge/php--fpm-7.4.8-777BB4.svg?&logo=php&logoColor=white)](https://secure.php.net/releases/7_4_8.php)
[![Composer](https://img.shields.io/badge/composer-latest-885630.svg?&logo=composer&logoColor=white)](https://getcomposer.org)
[![Redis](https://img.shields.io/badge/redis-phpredis-c50c2e.svg?&logo=redis&logoColor=white)](https://github.com/phpredis/phpredis)
[![Laravel Ready](https://img.shields.io/badge/Laravel-up%20to%207.x-c5170c.svg?&logo=Laravel&logoColor=white)](https://laravel.com/docs/7.x)

## Introduction
Laravel (and Lumen) ready image php:7.4-fpm-buster based

### Versioning
| Docker Tag | GitHub Release | PHP Version |
| ---------- | -------------- | ----------- |
| latest     | master Branch  | 7.4.8       |

<br><hr>

## How to use
To pull the conteiner:
```
$ docker pull pauloreal/laravel-ready:latest
```

To run the container:
```
$ sudo docker run -d pauloreal/laravel-ready:latest
```

### Into Docker Composer
> **PROJECT_PATH**/docker/docker-compose.yml:
```
version: "3.8"
services:
  php-fpm:
    image: pauloreal/laravel-ready
    container_name: php-fpm
    restart: unless-stopped
    tty: true
    volumes:
      - ../:/var/www/html
    ports:
      - "9000"
```

Default web root:
```
/var/www/html
```

<br><hr>

### Author
> Paulo Real

#### Need help?
> Email me: [contact@pauloreal.com](mailto:contact@pauloreal.com)