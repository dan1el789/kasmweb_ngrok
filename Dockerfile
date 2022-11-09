FROM kasmweb/chromium:1.11.0

COPY ngrok.yml /ngrok.yml
COPY ngrok /usr/local/bin/ngrok

RUN chmod +x /usr/local/bin/ngrok
