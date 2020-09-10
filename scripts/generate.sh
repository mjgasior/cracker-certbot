docker run -it --rm \
    -v /etc/letsencrypt:/etc/letsencrypt \
    -v /var/lib/letsencrypt:/var/lib/letsencrypt \
    -v /srv/docker/letsencrypt-site:/data/letsencrypt \
    -v "/var/log/letsencrypt:/var/log/letsencrypt" \
    certbot/certbot \
    certonly --webroot \
    --register-unsafely-without-email --agree-tos \
    --webroot-path=/data/letsencrypt \
    --staging \
    -d cracker.red -d www.cracker.red