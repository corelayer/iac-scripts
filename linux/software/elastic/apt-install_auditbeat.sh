#!/bin/bash
echo "### install auditbeat"
apt-get install -y auditbeat


echo "### --> enable systemd service auditbeat"
systemctl enable auditbeat

echo "### --> restart systemd service auditbeat"
systemctl restart auditbeat

echo "### --> DONE <--"