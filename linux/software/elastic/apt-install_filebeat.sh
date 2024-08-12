#!/bin/bash
echo "### install filebeat"
apt-get install -y filebeat

echo "### --> enable systemd service filebeat"
systemctl enable filebeat

echo "### --> restart systemd service filebeat"
service filebeat restart

echo "### --> DONE <--"