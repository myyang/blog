from nginx

volume /var/_built

run apt-get update && apt-get install -y curl git cron
run git clone https://github.com/lukas2511/letsencrypt.sh.git /letsencrypt.sh

add default.conf /etc/nginx/conf.d/
add nginx.conf /etc/nginx/
add start-service.sh /

run mkdir -p /var/www/letsencrypt
#copy certs /letsencrypt.sh/certs
#add domains.txt config.sh private_key.json private_key.pem service-cron /letsencrypt.sh/
add domains.txt config.sh service-cron /letsencrypt.sh/

cmd [ "/start-service.sh" ]
