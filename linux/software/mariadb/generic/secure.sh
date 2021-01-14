#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - MARIADB - UBUNTU - Secure Installation"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


mysql -e "UPDATE mysql.user SET Password=PASSWORD(‘$MYSQL_ROOT_PASSWORD’) WHERE User=’root’;"
mysql -e "DELETE FROM mysql.user WHERE User=’root’ AND Host NOT IN (‘localhost’, ‘127.0.0.1’, ‘::1’);"
mysql -e "DELETE FROM mysql.user WHERE User=”;"
mysql -e "DROP DATABASE test;"
mysql -e "FLUSH PRIVILEGES;"


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "