#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POSTGRESQL - Configure"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


ipv4_listen=$1

sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '$ipv4_listen'/" /etc/postgresql/12/main/postgresql.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "