#!/usr/bin/env bash
cat - <<FIN
#
#   ▄▀▀▄ ▄▀▄ 
#  █  █ ▀  █ ysql
#  ▐  █    █ 
#    █    █  
#  ▄▀   ▄▀   
#  █    █    
#  ▐    ▐           
#               
FIN
# Setting MySQL root user password root/root
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
# Installing packages
apt-get install -y mysql-server mysql-client >> /vagrant/log/mysql.log 2>&1
# Allow External Connections on your MySQL Service
sudo sed -i -e 's/bind-addres/#bind-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo sed -i -e 's/skip-external-locking/#skip-external-locking/g' /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root'; FLUSH privileges;" >> /vagrant/log/mysql.log 2>&1
sudo service mysql restart >> /vagrant/log/mysql.log 2>&1
# create client database
if [ ! -d "/usr/share/adminer" ]; then
  mysql -u root -proot -e "CREATE DATABASE drupal;" >> /vagrant/log/mysql.log 2>&1
fi
mysqld --help
cat - <<INFO
Mysql installed.
bd name : drupal
bd username : root
bd password : root
#
INFO