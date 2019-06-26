#!/bin/bash
cat - <<INFO
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ 
#    █    █ rupal 8
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐ 
#
INFO
# Donwnload drupal
# https://ftp.drupal.org/files/projects/drupal-8.7.3.zip
cd /vagrant/www/html
if [ ! -d "docroot/core" ] >> /vagrant/log/drupal.log 2>&1; then
    echo "Download the drupal files"
    echo "From https://ftp.drupal.org/files/projects/drupal-$1.zip"
    echo "Pleaser Wait please..."
    sudo wget "https://ftp.drupal.org/files/projects/drupal-$1.zip" -O /vagrant/www/html/docroot.zip >> /vagrant/log/drupal.log 2>&1
    echo "Unzip the Downloaded files (Wait please...)"
    ls -la
    # Unzip Drupal
    unzip docroot.zip >> /vagrant/log/drupal.log 2>&1
    rm -r docroot.zip
    mv "drupal-$1" docroot
fi
cat - <<INFO
Go http://localhost to process the Drupal installation.
Or vagrant ssh to run ans the followed command.
cd /vagrant/www/http/docroot
drush site-install --db-url=mysql://root:root@localhost/drupal
#
INFO
