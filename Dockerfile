ARG NGROK=token
FROM httpd:latest

COPY ./ngrok /ngrok

RUN echo "Hello World " > /usr/local/apache2/htdocs/index.html
RUN ./ngrok/install.sh ${NGROK}
