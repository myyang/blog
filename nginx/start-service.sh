#!/bin/bash 

for p in HUGO_PORT_1313_TCP_ADDR HUGO_PORT_1313_TCP_PORT BLOG_URL BLOG_PORT
do
    eval value=\$$p
    sed -i "s|{{${p}}}|${value}|g" /etc/nginx/conf.d/default.conf
done

nginx -g 'daemon off;'
