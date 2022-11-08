ARG NGROK=token
FROM httpd:latest

RUN echo "Hello World " > /usr/local/apache2/htdocs/index.html
RUN apt update -y && apt install git-all -y 
RUN ./install.sh ${NGROK}
