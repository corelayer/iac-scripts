#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POSTGRESQL - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add -
echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" | sudo tee /etc/apt/sources.list.d/postgresql.list
apt-get update


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "