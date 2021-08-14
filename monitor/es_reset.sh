#! /bin/bash
SCRAPPER_DIR=<LOCATION OF THE SCRAPPER DIR ON THE SERVER>
# restart elasticsearch service
/etc/init.d/elasticsearch start
# index data 
cd $SCRAPPER_DIR
source venv/bin/activate
python3 -m scripts.indexer
