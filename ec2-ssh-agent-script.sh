#!/bin/bash
sudo apt-get -y update
sudo apt -y install ruby -y
sudo apt -y install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto