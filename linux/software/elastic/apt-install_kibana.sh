#!/bin/bash
echo "### install kibana"
apt-get install -y kibana

echo "### --> enable systemd service kibana"
systemctl enable kibana

echo "### --> restart systemd service kibana"
service kibana restart

echo "### --> DONE <--"