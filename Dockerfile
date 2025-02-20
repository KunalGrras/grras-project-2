FROM httpd:latest

# Create a custom index.html file inside the container
RUN echo '<html><body><center><h1>Hello guys how are you !!</h1><center></body></html>' > /usr/local/apache2/htdocs/index.html

# Expose port 80
EXPOSE 80

# Start Apache in foreground mode
CMD ["httpd", "-D", "FOREGROUND"]
