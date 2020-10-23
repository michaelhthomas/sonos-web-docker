FROM node:12

# create app dir
WORKDIR /usr/sonos-web

RUN npm install -g sonos-web-cli
EXPOSE 5050

ADD ./startup.sh /opt/startup.sh
CMD ["/bin/bash", "/opt/startup.sh"]
