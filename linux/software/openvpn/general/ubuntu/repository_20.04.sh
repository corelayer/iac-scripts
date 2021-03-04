#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - OPENVPN - GENERAL - REPOSITORY Ubuntu"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


echo "### Checking prerequisites"
apt-get update && apt-get -y install ca-certificates wget net-tools gnupg

echo "### Adding apt key"
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -

echo "### Adding repository to sources.list"
echo "deb http://as-repository.openvpn.net/as/debian focal main" | tee -a /etc/apt/sources.list.d/openvpn-as-repo.list

apt-get update


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "