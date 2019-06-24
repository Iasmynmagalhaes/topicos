#!/bin/bash
sudo apt install mysql-server -y

IP="$(curl http://169.254.169.254/latest/meta-data/public-ipv4)"
#CONFIGURA MYSQL PRA RECEBER O WORDPRESS
sudo mysql <<EOF
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
