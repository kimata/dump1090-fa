#!/bin/sh

DEV_SERIAL="MODES"

set -ex

mkdir -p /run/dump1090

/usr/sbin/nginx -c /opt/dump1090/nginx.conf 2>/dev/null
/opt/dump1090/dump1090 --quiet --stats-every 60 --device-serial ${DEV_SERIAL} --net --write-json /run/dump1090
