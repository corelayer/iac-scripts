#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - Check if apt is running"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


inProgress=true
while [ $inProgress = true ]
do
    sleep 5s
    output=$(ps aux | grep apt-get | grep -i dpkg)
    if [ "$output" ]; then
        echo "APT is running, sleep for 5 seconds"
        sleep 5s
        continue
    fi
    
    inProgress=false
done



echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

