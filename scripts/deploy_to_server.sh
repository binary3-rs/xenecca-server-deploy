#! /bin/bash

SERVER_IP=195.201.112.234
 
cd ~/Documents/binary3/xenecca/xenecca-api && mvn clean install
sftp root@$SERVER_IP:/home/xenecca <<EOF
cd ~/xenecca
put target/api-0.0.1-SNAPSHOT.jar
exit
EOF
# SCP is outdated
# scp -P 23 target/api-0.0.1-SNAPSHOT.jar root@$SERVER_IP:~/xenecca
