#!/bin/bash
set -e 

sudo apt-get update -y
#download node and npm
sudo apt install npm nodejs -y

#create our working directory if it doesnt exist
DIR="/home/ubuntu/express-app"
if [ -d "$DIR" ]; then
  rm -rf ${DIR} && mkdir ${DIR}
else
  mkdir ${DIR}
fi
