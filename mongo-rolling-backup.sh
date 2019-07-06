#!/bin/bash

. /home/backup/rocking-shell/config.sh

DEST=$BACKUP_DIR/mongodb_$DATE
mkdir -p $DEST
mongodump -o $DEST > MONGO_LOG

ls -lrt $BACKUP_DIR
echo "$DATE">exec.log
sh $MY_DIR/sendemail.sh "Mongo Backup done" "Created new backup at $DEST \\n $MONGO_LOG"