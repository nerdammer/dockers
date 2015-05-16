#!/bin/bash

cp squid.conf /etc/squid/

echo "cache_peer $proxy_host parent $proxy_port 0 no-query default login=$proxy_user:$proxy_pass" >> /etc/squid/squid.conf
echo "never_direct allow all" >> /etc/squid/squid.conf
echo "http_port $listen" >> /etc/squid/squid.conf

service squid start

tail -f /var/log/squid/access.log