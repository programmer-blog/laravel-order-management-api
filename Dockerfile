FROM laravelsail/php82-composer:latest

# Install required PHP extensions
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql

# Enable the required PHP extensions
RUN docker-php-ext-enable pdo pdo_mysql
