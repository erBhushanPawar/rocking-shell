#!/bin/sh
DATE=`date '+%Y-%m-%d_%H:%M:%S'`
HOSTNAME=$(hostname)
BACKUP_DIR=/home/backup/
MY_DIR=/home/backup/rocking-shell

MONGO_HOST=$HOSTNAME
MONGO_USER="root"
MONGO_PASS=""

MYSQL_HOST=$HOSTNAME
MYSQL_USER="root"
MYSQL_PASS="root"
