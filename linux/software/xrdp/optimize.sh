#!/bin/sh
echo "### optimize xrdp"
cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak

sed -i 's/#tcp_send_buffer_bytes=32768/tcp_send_buffer_bytes=4194304/g' /etc/xrdp/xrdp.ini
