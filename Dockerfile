FROM node:12
MAINTAINER	Michael Thomas

# create app dir
WORKDIR /usr/sonos-web

RUN npm install -g sonos-web-cli
RUN sonos-web install
EXPOSE 5050

ADD ./startup.sh /opt/startup.sh
CMD ["/bin/bash", "/opt/startup.sh"]
