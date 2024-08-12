#!/bin/bash
echo "### install elasticsearch"
apt-get install -y elasticsearch

echo "### --> enable systemd service elasticsearch"
systemctl enable elasticsearch

echo "### --> restart systemd service elasticsearch"
service elasticsearch restart

echo "### --> DONE <--"