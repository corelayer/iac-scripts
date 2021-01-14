#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure MariaDB"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

database_name=$1
database_user=$2
database_password=$3

mysql -e "CREATE DATABASE $database_name;"
mysql -e "GRANT ALL ON $database_name.* TO $database_user@localhost IDENTIFIED BY '$database_password';"
mysql -e "FLUSH PRIVILEGES;"


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
