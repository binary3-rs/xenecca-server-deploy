#! /bin/bash

API_EXEC_PATH=/root/xenecca
SCREEN_NAME=xenecca-api
screens=$(screen -ls | grep "[0-9]*\.${SCREEN_NAME}" | sed -E 's/\s+([0-9]+)\..*/\1/')
for session in $screens; 
do      
    echo "Killing a session ${session}..."
    screen -X -S $session quit
done
echo "Running a screen with API running" 
screen -S $SCREEN_NAME -d -m java -jar $API_EXEC_PATH/api-0.0.1-SNAPSHOT.jar

