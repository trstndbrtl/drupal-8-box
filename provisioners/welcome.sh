#!/bin/bash
cat - <<FIN
#  ____________________________________________________
#  _/////__________________________________//__________
#  _//____//_______________________________//____/_____
#  _//_____/_/__//_//___/_/__//_____//_____//_//___//__
#  _//_____//_//___//___/_/___//__//___//__/_//______/_
#  _//_____//_//___//___/_/____/_//____//__//__//__/___
#  _//____//__//___//___/_//__//_//____//__/_//______//
#  _/////____///_____//_/_//_______//__//_///__////____
#  _______________________//___________________________
#  _Little Drupal 8 Box by trstndbrtl__________________
#  _with http://revuesdecode.com ______________________
#
FIN
cat - <<FIN
#
#
#
#   ▄▀▀▄ ▄▀▀▄ 
#  █   █    █ 
#  ▐  █    █  
#    █    █   
#     ▀▄▄▄▄▀
# 
FIN
echo -e "$(lsb_release -a)"
cat - <<FIN
# 
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ 
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐ 
#
FIN
apachectl -V
cat - <<FIN
#
#   ▄▀▀▄▀▀▀▄ 
#  █   █   █ 
#  ▐  █▀▀▀▀  
#     █      
#   ▄▀       
#  █         
#  ▐ 
#
FIN
php --version
sudo dpkg --get-selections | grep -v deinstall | grep php
cat - <<FIN
Configuration php.ini
post_max_size = 512M
upload_max_filesize = 512M
memory_limit = 512M
sudo systemctl restart apache2
#
#   ▄▀▀▄ ▄▀▄ 
#  █  █ ▀  █ 
#  ▐  █    █ 
#    █    █  
#  ▄▀   ▄▀   
#  █    █    
#  ▐    ▐  
#
FIN
mysqld --help 2> /vagrant/log/mysql.log
cat - <<FIN
bd name : drupal
bd username : root
bd password : root
#
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ 
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐ 
#
Adminer (4.7.1)
Adminer usage : http://localhost:8080/adminer.php
Root username : root
Root password : root
#
#   ▄▀▄▄▄▄  
#  █ █    ▌ 
#  ▐ █      
#    █      
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐ 
#
FIN
composer -V 2> /vagrant/log/composer.log
cat - <<FIN
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ 
#    █    █ 
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐ 
#
FIN
echo "Drush Commandline Tool 9.7.0 installed"