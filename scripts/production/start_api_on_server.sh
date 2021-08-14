#! /bin/bash

SERVER_IP=<IP address of the server>
USER=<user>
echo Activate remote server
ssh $USER@$SERVER_IP 'bash -s' < runapi.sh

