FROM node:17-alpine3.14
RUN apk --no-cache add openjdk8-jre bash curl openssl gettext nano nginx sudo python3

RUN mkdir -p /run/nginx
RUN sudo npm cache clean --force
RUN npm config set user root
RUN npm i -g firebase-tools@11.14.4 && firebase -V

COPY nginx.conf /etc/nginx/
COPY serve.sh /usr/bin/
RUN chmod +x /usr/bin/serve.sh