#! /bin/bash
LOCAL_DIR=~/Documents/binary3/xenecca/xenecca-scrappers/
REMOTE_DIR=/root/xenecca/xenecca-scrappers/
SERVER=195.201.112.234

rsync -zrpvP --exclude=venv $LOCAL_DIR root@$SERVER:$REMOTE_DIR
