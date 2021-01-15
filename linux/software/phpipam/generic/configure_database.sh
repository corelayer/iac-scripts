#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure MariaDB"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

mariadb_username=$1
mariadb_password=$2
database_name=$3
database_user=$4
database_password=$5

mysql -u $mariadb_username -p$mariadb_password -e "CREATE DATABASE $database_name;"
mysql -u $mariadb_username -p$mariadb_password -e "GRANT ALL ON $database_name.* TO $database_user@localhost IDENTIFIED BY '$database_password';"
mysql -u $mariadb_username -p$mariadb_password -e "FLUSH PRIVILEGES;"


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
