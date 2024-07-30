# Use the official PHP image
FROM php:7.4-apache

# Install the mysqli extension
RUN docker-php-ext-install mysqli

# Copy custom Apache configuration
COPY my_apache_conf.conf /etc/apache2/conf-available/my_apache_conf.conf

# Enable the custom Apache configuration
RUN a2enconf my_apache_conf.conf

# Copy application source
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80

