FROM ubuntu:20.04
RUN apt-get update \
    && apt-get -y install software-properties-common curl \
    && add-apt-repository ppa:ondrej/php \
    && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash \
    && apt-get update \
    && apt-get install openssh-client git nodejs php8.1 php8.1-curl php8.1-gd php8.1-mbstring php8.1-xml php8.1-zip rsync -y
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
