#!/bin/bash
echo "### install logstash"
apt-get install -y logstash

echo "### --> enable systemd service logstash"
systemctl enable logstash

echo "### --> restart systemd service logstash"
service logstash restart

echo "### --> DONE <--"