#!/bin/sh

set -e

mkdir -p /run/dump1090

/usr/sbin/nginx -c /opt/dump1090/nginx.conf 2>/dev/null
/opt/dump1090/dump1090 --net --write-json /run/dump1090
