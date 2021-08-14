#! /bin/bash

SERVER_IP=<IP address of the server>
USER=<user>
SERVER_LOCATION=/home/$USER/tomcat/webapps
SERVER_SSH_PORT=1389
LOCAL_DIR=~/Documents/binary3/xenecca/xenecca-api

# package the war
cd $LOCAL_DIR && mvn clean package
# send executable to server
sftp -oPort=$SERVER_SSH_PORT $USER@$SERVER_IP:$SERVER_LOCATION <<EOF
put target/api.war
exit
EOF
