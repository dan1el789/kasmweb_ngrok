FROM httpd:latest

COPY ngrok.yml /ngrok.yml
COPY ngrok /usr/local/bin/ngrok

RUN echo "Hello World " > /usr/local/apache2/htdocs/index.html

RUN chmod +x /usr/local/bin/ngrok
RUN ls -la
