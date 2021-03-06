#!/bin/bash

# Add to cron
# crontab -e
# 00 23 * * Sat /root/trackingCoins/certbot_renew.sh

# Watch crom lon
# tail /var/log/cron

# Set execute permission on your script
# chmod +x certbot_renew.sh

# Program path
# type docker-compose

docker run --rm --name certbot --volume "/root/trackingCoins/letsencrypt:/etc/letsencrypt" certbot/certbot renew
/usr/local/bin/docker-compose --file /root/trackingCoins/docker-compose.yml restart nginx

