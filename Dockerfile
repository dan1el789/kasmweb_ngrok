ARG NGROK=token
FROM httpd:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && apt-get install unzip zip -y \
  && rm -rf /var/lib/apt/lists/*
  
COPY ./ngrok /ngrok

RUN echo ${#NGROK}
RUN echo "Hello World " > /usr/local/apache2/htdocs/index.html

RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
RUN tar -xvzf ngrok-v3-stable-linux-amd64.tgz 
RUN ls -la
RUN ./ngrok config add-authtoken $NGROK
RUN ./ngrok http 80
