#!/bin/bash
echo "### configure repository for postgresql"

echo "### --> install dependencies"
DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "### --> add repository key"
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O- | apt-key add -

echo "### --> add repository to /etc/apt/sources.list.d/postgresql.list"
echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" | tee /etc/apt/sources.list.d/postgresql.list

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"