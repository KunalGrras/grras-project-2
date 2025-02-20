FROM httpd:latest

# Create a custom index.html file inside the container
RUN echo '<html><body><h1>Welcome to My Custom HTTPD Server</h1></body></html>' > /usr/local/apache2/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start Apache in foreground mode
CMD ["httpd", "-D", "FOREGROUND"]
