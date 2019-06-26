#!/bin/bash
cat - <<FIN
#
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ pache2
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐   
#
FIN
sudo apt-get install apache2 -y >> /vagrant/log/apache.log 2>&1
sudo a2enmod rewrite >> /vagrant/log/apache.log 2>&1
sudo systemctl restart apache2 >> /vagrant/log/apache.log 2>&1
apachectl -V
cat - <<INFO
a2enmod rewrited...
to restart Apache run followed command :
systemctl restart apache2
#
INFO