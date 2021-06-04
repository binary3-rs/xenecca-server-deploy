#! /bin/bash
BASE_DIR=~/xenecca
DIRS=('logs/api-logs' 'logs/scrapper-logs' 'backups' 'learning-resources/files' 'learning-resources/tmp' 'xenecca-scrappers/images/courses/posters')
for dir in ${DIRS[*]}
do
  dir_path=$BASE_DIR/$dir
  if [ ! -d $dir_path ]; then
      echo "Creating ${dir_path}..."
      mkdir -p $dir_path
  fi
done
if [ ! -f "${BASE_DIR}/learning-resources/urls.txt" ]; then
    touch ${BASE_DIR}/learning-resources/urls.txt
fi

if [ $# -eq 1 ]; then
    password=$1
    echo 'Initialize database and the db user...'
    sudo -i -u postgres psql -c "CREATE USER xenecca_user22 WITH PASSWORD '${password}' CREATEDB;"
    sudo -i -u postgres psql -c "CREATE DATABASE xenecca222 WITH OWNER 'xenecca_user22' ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';"
else
    echo "Database init failed. You didn't provide user password!"
fi


