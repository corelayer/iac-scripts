#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - JETBRAINS - TEAMCITY - GENERIC - Install"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


target_data_path=$1
database_user_password=$2

### Create JDBC-driver directory in data path
mkdir -p $target_data_path/.BuildServer/lib/jdbc
cd $target_data_path/.BuildServer/lib/jdbc

### Download JDBC-driver
wget https://jdbc.postgresql.org/download/postgresql-42.2.18.jar

su - postgres psql -c "CREATE ROLE teamcity LOGIN PASSWORD '$database_user_password' NOINHERIT CREATEDB;"
su - postgres psql -c "CREATE SCHEMA IF NOT EXISTS teamcity AUTHORIZATION teamcity;"

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

