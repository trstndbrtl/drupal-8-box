#!/bin/bash
cat - <<INFO
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ rush
#    █    █ 
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐
#
INFO
cd /vagrant/www/html
# Install Drush and set path for vagrant
composer global require drush/drush >> /vagrant/log/drush.log 2>&1
echo 'export PATH="$HOME/.config/composer/vendor/bin:$PATH"' >> $HOME/.bashrc
cat - <<INFO
Drush Commandline Tool 9.7.0 installed
#
INFO