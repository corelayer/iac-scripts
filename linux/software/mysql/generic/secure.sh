#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - MYSQL - UBUNTU - Secure Installation"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

mysql_root_password=$1

mysql -u root -e "UPDATE mysql.user SET Password=PASSWORD($mysql_root_password) WHERE User='root';"
mysql -u root -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
mysql -u root -e "DELETE FROM mysql.user WHERE User='';"
mysql -u root -e "DROP DATABASE test;"
mysql -u root -e "FLUSH PRIVILEGES;"


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "