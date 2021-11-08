#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POSTGRESQL - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"
echo "#                                                                      #"

echo "### Install dependencies"
apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "### Add repository key"
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add -
echo "### Add repository to /etc/apt/sources.list.d"
echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" | sudo tee /etc/apt/sources.list.d/postgresql.list

echo "Run apt update"
apt update

echo "#                                                                      #"
echo "########################################################################"
echo " "
