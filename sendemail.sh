#!/bin/sh

. /home/backup/rocking-shell/config.sh

rm -rf $MY_DIR/mail.txt
echo "Subject: $1
From: Automation: @ $HOSTNAME
To: My automation bot


$2

HostName: $HOSTNAME
Sent On : $DATE
" > $MY_DIR/mail.txt

/usr/sbin/ssmtp yourmail@gmail.com < $MY_DIR/mail.txt