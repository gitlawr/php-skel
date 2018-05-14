FROM php:7.0-apache
ADD ci /scripts/ci
ADD DockerfileSample /scripts/Dockerfile
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip libsqlite3-dev zlib1g-dev && \
    docker-php-ext-install zip
