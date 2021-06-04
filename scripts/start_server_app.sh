#! /bin/bash

SERVER_IP=195.201.112.234
LOCATION=~/Documents/binary3/xenecca/xenecca-server-deploy
ssh root@$SERVER_IP 'bash -s' < $LOCATION/cron-jobs/runapi.sh

