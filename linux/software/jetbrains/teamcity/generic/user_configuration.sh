#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Add user"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


new_user_password=$1

echo "### Add user teamcity"
useradd teamcity --no-log-init --home-dir /home/teamcity --create-home --shell /bin/bash
echo "teamcity:$new_user_password" | chpasswd


echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "