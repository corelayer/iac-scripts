#!/bin/sh
git clone https://github.com/corelayer/wireguard-scripts /tmp/wireguard-scripts
cp -R /tmp/wireguard-scripts/server/* /etc/wireguard/.


chown -R root:root /etc/wireguard/*
chmod -R 600 /etc/wireguard/*