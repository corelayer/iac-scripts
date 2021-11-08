#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - TimeScaleDB - UBUNTU - REPOSITORY"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

echo "### Add repository"
sudo sh -c "echo 'deb [signed-by=/usr/share/keyrings/timescale.keyring] https://packagecloud.io/timescale/timescaledb/ubuntu/ $(lsb_release -c -s) main' > /etc/apt/sources.list.d/timescaledb.list"
wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/timescale.keyring

echo "### Run apt-get update"
sudo apt-get update

echo "#                                                                      #"
echo "########################################################################"
echo " "
