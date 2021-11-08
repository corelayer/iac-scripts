#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POWERDNS - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"
echo "#                                                                      #"

echo "### Add repository to apt"
curl https://repo.powerdns.com/FD380FBB-pub.asc | apt-key add -
add-apt-repository "deb [arch=amd64] http://repo.powerdns.com/ubuntu focal-rec-44 main"
apt-get update

echo "#                                                                      #"
echo "########################################################################"
echo " "
