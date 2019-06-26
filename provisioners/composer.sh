#!/bin/bash
cat - <<FIN
#
#   ▄▀▄▄▄▄  
#  █ █    ▌ 
#  ▐ █      
#    █ omposer     
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐      
#
FIN
curl -sS https://getcomposer.org/installer | php >> /vagrant/log/composer.log 2>&1
sudo mv composer.phar /usr/local/bin/composer >> /vagrant/log/composer.log 2>&1
chmod +x /usr/local/bin/composer
cat - <<INFO
Composer installed
#
INFO
composer -V 2> /vagrant/log/composer.log