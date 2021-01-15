#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - PHPIPAM - GENERIC - Configure Apache2"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

template_directory=$1
install_path=$(printf "%q" $2)
servername=$3
serveralias=$4
serveradmin=$5

cp $template_directory/linux/software/phpipam/templates/etc/apache2/sites-available/phpipam.conf /etc/apache2/sites-available/.

sed -i "s/\/var\/www\/html\/phpipam/$install_path/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<servername>/$servername/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveralias>/$serveralias/" /etc/apache2/sites-available/phpipam.conf
sed -i "s/<serveradmin>/$serveradmin/" /etc/apache2/sites-available/phpipam.conf

a2ensite phpipam.conf


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "
