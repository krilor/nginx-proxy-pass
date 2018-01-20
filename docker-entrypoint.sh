#!/bin/ash
set -e

# Set default
HOST="${HOST:-https://reqres.in}"

echo "Starting nginx proxy for: $HOST"

# Extract domain name
DOMAIN=`echo $HOST | awk -F/ '{print $3}'`

# Add host to nginx config
cd /etc/nginx/conf.d
sed -i "4s@.*@    proxy_set_header Host $DOMAIN;@" default.conf
sed -i "5s@.*@    proxy_pass $HOST;@" default.conf
cd /

# All for the CMD to run
exec "$@"