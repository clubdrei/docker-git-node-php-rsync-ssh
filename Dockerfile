FROM ubuntu:20.04
RUN apt-get update \
    && apt-get -y install software-properties-common curl \
    && add-apt-repository ppa:ondrej/php \
    && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash \
    && apt-get update \
    && apt-get install openssh-client git nodejs php7.4 rsync -y
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
