#!/bin/bash
echo "########################################################################"
echo "LINUX - OS - DISTRO - DEBIAN-BASED - GENERIC - Check if apt is running"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


inProgress=true
while [ $inProgress = true ]
do
    sleep 10s
    output=$(ps aux | grep apt-get | grep -i dpkg)
    if [ "$output" ]; then
        echo "APT is running, sleep for 10 seconds"
        continue
    fi
    
    inProgress=false
done
echo "Done."



echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

