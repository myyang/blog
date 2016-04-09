from nginx

maintainer ymy1019@gmail.com

volume /var/_built

run apt-get update && apt-get install -y curl git cron

add default.conf /etc/nginx/conf.d/
add nginx.conf /etc/nginx/
add start-service.sh /

run mkdir -p /var/www/letsencrypt
copy letsencrypt.sh /letsencrypt.sh
run ln -s /letsencrypt.sh/certs /etc/nginx/ssl

cmd [ "/start-service.sh" ]
