#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 DOMAIN" >&2
  exit 1
fi

DOMAIN=$1

wget https://dl.eff.org/certbot-auto
sudo mv certbot-auto /usr/local/bin/certbot-auto
sudo chown root /usr/local/bin/certbot-auto
chmod 0755 /usr/local/bin/certbot-auto
#/usr/local/bin/certbot-auto --help

echo "Installation done, getting certificates now"

mkdir -p /var/www/$DOMAIN

certbot-auto certonly -d www.$DOMAIN -d $DOMAIN