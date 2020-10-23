#!/bin/bash

if [ ! -f ./app/ ]; then
    sonos-web install
    mkdir -p app
    mv /root/.sonos-web/* ./app
fi

cd app && node src/server.js
