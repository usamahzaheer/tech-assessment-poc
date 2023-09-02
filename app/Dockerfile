# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the contents of the local src directory to the working directory in the container
COPY src/ /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
