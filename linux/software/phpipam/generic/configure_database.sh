#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure MariaDB"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

mariadb_hostname=$1
mariadb_username=$2
mariadb_password=$3
database_name=$4
database_user=$5
database_password=$6
application_password=$7
phpipam_install_path=$8

mysql -h $mariadb_hostname -u $mariadb_username -p$mariadb_password -e "CREATE DATABASE $database_name;"
mysql -h $mariadb_hostname -u $mariadb_username -p$mariadb_password -e "GRANT ALL ON $database_name.* TO $database_user@localhost IDENTIFIED BY '$database_password';"
mysql -h $mariadb_hostname -u $mariadb_username -p$mariadb_password -e "FLUSH PRIVILEGES;"


sed -i "s/db\['host'\] = 'localhost'/db\['host'\] = '$mariadb_hostname'/" $phpipam_install_path/config.php
sed -i "s/db\['user'\] = 'phpipam'/db\['user'\] = '$database_user'/" $phpipam_install_path/config.php
sed -i "s/db\['pass'\] = 'phpipamadmin'/db\['pass'\] = '$database_password'/" $phpipam_install_path/config.php
sed -i "s/db\['name'\] = 'phpipam'/db\['name'\] = '$database_name'/" $phpipam_install_path/config.php

mysql -u $mariadb_username -p$mariadb_password $database_name < $phpipam_install_path/db/SCHEMA.sql

php $phpipam_install_path/functions/scripts/reset-admin-password.php $application_password

mysql -h $mariadb_hostname -u $mariadb_username -p$mariadb_password $mariadb_hostname -e "UPDATE $database_name.users SET passChange='No'WHERE id=1;"

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
