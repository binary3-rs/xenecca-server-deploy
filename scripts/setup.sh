#!/bin/bash

# download & install postgresql
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql


# download & install elasticsearch
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch
screen -d -m elastic-screen
sudo systemctl start elasticsearch.service


# # prebaci id_ed.... iz ~/.ssh/
# eval "$(ssh-agent -s)"
# chmod 400 ~/.ssh/id_ed22519
# ssh-add ~/.ssh/id_ed25519

# # clone the repo
# cd ~/xenecca
# git@github.com:binary3-rs/xenecca-scrappers.git

# create venv
sudo apt-get install python3-venv
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt

