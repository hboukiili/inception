#!/bin/bash
service mysql start
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mysql -u root -e "CREATE USER IF NOT EXISTS '${newUser}'@'%' IDENTIFIED BY '${Newpassword}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${newUser}'@'%' IDENTIFIED BY '${Newpassword}';"
mysql -u root -e "flush privileges;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${Newpassword}';"