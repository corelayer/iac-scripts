#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - HASHICORP - GENERAL - REPOSITORY Debian"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "