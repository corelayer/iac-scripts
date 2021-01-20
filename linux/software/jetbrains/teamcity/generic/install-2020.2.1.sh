#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


target_install_path=$1

### Fetch version 2020.2.1 from JetBrains
cd /tmp
wget https://download.jetbrains.com/teamcity/TeamCity-2020.2.1.tar.gz
tar zxvf TeamCity*
mv /tmp/TeamCity $target_install_path

#### Set ownership and permissions
chown -R teamcity:root $target_install_path
chmod -R 770 $target_install_path


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "