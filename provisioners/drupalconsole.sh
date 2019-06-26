#!/bin/bash
cat - <<INFO
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ rupal
#    █    █ console
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐
#
INFO
# Install drupal console
cd /vagrant/www/html/docroot
curl https://drupalconsole.com/installer -L -o drupal.phar >> /vagrant/log/drupal-console.log 2>&1
mv drupal.phar /usr/local/bin/drupal >> /vagrant/log/drupal-console.log 2>&1
chmod +x /usr/local/bin/drupal >> /vagrant/log/drupal-console.log 2>&1
drupal --version 2> /vagrant/log/drupal-console.log