#!/bin/bash

if [ ! -f /root/.sonos-web/ ]; then
    sonos-web install
fi

sonos-web start && : >> log.log && tail -f log.log
