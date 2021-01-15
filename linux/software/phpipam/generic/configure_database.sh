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

phpipam_install_path=$7

mysql -u $mariadb_username -p$mariadb_password -e "CREATE DATABASE $database_name;"
mysql -u $mariadb_username -p$mariadb_password -e "GRANT ALL ON $database_name.* TO $database_user@localhost IDENTIFIED BY '$database_password';"
mysql -u $mariadb_username -p$mariadb_password -e "FLUSH PRIVILEGES;"


sed -i "s/\$db['host'] = 'localhost';/\$db['host'] = '$mariadb_hostname';/" $phpipam_install_path/config.php
sed -i "s/\$db['user'] = 'localhost';/\$db['user'] = '$database_user';/" $phpipam_install_path/config.php
sed -i "s/\$db['pass'] = 'localhost';/\$db['pass'] = '$database_password';/" $phpipam_install_path/config.php
sed -i "s/\$db['name'] = 'localhost';/\$db['name'] = '$database_name';/" $phpipam_install_path/config.php


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
