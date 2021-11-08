#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - POSTGRESQL - Configure"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


ipv4_listen=$1

echo "### Configure postgresql to listen on address"
sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '$ipv4_listen'/" /etc/postgresql/12/main/postgresql.conf

echo "### Configure client authentication for external clients"
echo 'host    all      all              0.0.0.0/0                    md5' | sudo tee -a /etc/postgresql/12/main/pg_hba.conf
echo 'host    all      all              ::/0                         md5' | sudo tee -a /etc/postgresql/12/main/pg_hba.conf

service postgresql restart

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "