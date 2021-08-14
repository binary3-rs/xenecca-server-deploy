#! /bin/bash
TOMCAT_PATH=/home/$USER/tomcat/bin

echo Starting API on Tomcat...
bash $TOMCAT_PATH/catalina.sh stop
bash $TOMCAT_PATH/startup.sh
