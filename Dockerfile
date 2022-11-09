ARG NGROK=token
FROM httpd:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*
  
COPY ./ngrok /ngrok

RUN echo "Hello World " > /usr/local/apache2/htdocs/index.html
RUN sh /ngrok/systemd-ngrok-master/install.sh ${NGROK}
