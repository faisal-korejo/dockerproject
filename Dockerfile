# Start with the official Ubuntu image
FROM ubuntu:latest

# Install Apache and other necessary tools
RUN apt-get update && apt-get install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

# Copy the HTML files into the Apache server's directory
COPY index.html /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
