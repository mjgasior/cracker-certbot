docker run -it --rm \
    -v /etc/letsencrypt:/etc/letsencrypt \
    -v /var/lib/letsencrypt:/var/lib/letsencrypt \
    -v /srv/docker/letsencrypt-site:/data/letsencrypt \
    -v "/var/log/letsencrypt:/var/log/letsencrypt" \
    certbot/certbot \
    certonly --webroot \
    --email michaljgasior@gmail.com --agree-tos --no-eff-email \
    --webroot-path=/data/letsencrypt \
    -d cracker.red -d www.cracker.red