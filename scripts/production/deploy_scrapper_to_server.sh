#! /bin/bash

SERVER_IP=<IP address of the server>
USER=<user>
LOCAL_DIR=<local dir to transfer from>
SERVER_DIR=<target server dir>
SERVER_SSH_PORT=<port of the SSH on the server>

# exclude list must not have spaces between elements
rsync -zrpvP --exclude={'venv/','.git/','images/','.idea/','main.py','backup/','.env'} -e "ssh -p ${SERVER_SSH_PORT}" $LOCAL_DIR $USER@$SERVER_IP:$SERVER_DIR
