#! /bin/bash

BACKUP_DIR=~/Documents/binary3/xenecca/backups
if [ ! -d $BACKUP_DIR ]; then
    mkdir $BACKUP_DIR
fi

today=$(date +"%Y-%m-%d")
echo "Dumping database for the date ${today}..."   
pg_dump xenecca | gzip > $BACKUP_DIR/$today.gz && echo "Backup successfully created!"
