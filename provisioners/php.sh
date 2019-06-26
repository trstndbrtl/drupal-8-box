#!/bin/bash
cat - <<FIN
#
#   ▄▀▀▄▀▀▀▄ 
#  █   █   █ 
#  ▐  █▀▀▀▀  
#     █ hp    
#   ▄▀       
#  █         
#  ▐ 
#
FIN
sudo apt-get install curl unzip git -y >> /vagrant/log/php.log 2>&1
sudo apt-get install vim php -y >> /vagrant/log/php.log 2>&1
sudo apt-get install libapache2-mod-php -y >> /vagrant/log/php.log 2>&1
sudo systemctl restart apache2 >> /vagrant/log/php.log 2>&1
php --version
echo "# Download Curl, Unzip, Git, Php and etc...."
sudo apt-get install php-curl php-cli php-gd php-fpm php-dompdf php-intl php-json php-bcmath -y >> /vagrant/log/php.log 2>&1
echo "# Additional libraries need to be installed..."
sudo apt-get install php-mbstring php-xml php-zip php-imagick php-apcu php-imap php-mysql php-gettext -y >> /vagrant/log/php.log 2>&1
echo "# Additional libraries need to be installed... (Wait a moment....)"
sudo sed -i -e 's/post_max_size = [1-9]*M/post_max_size = 1024M/' /etc/php/7.2/apache2/php.ini >> /vagrant/log/php.log 2>&1
sudo sed -i -e 's/upload_max_filesize = [1-9]*M/upload_max_filesize = 1024M/' /etc/php/7.2/apache2/php.ini >> /vagrant/log/php.log 2>&1
sudo sed -i -e 's/memory_limit = [1-9]*M/memory_limit = 1024M/' /etc/php/7.2/apache2/php.ini >> /vagrant/log/php.log 2>&1
sudo systemctl restart apache2 >> /vagrant/log/php.log 2>&1
sudo dpkg --get-selections | grep -v deinstall | grep php
cat - <<INFO
#
Configuration php.ini
----------------------
post_max_size = 512M
upload_max_filesize = 512M
memory_limit = 512M
#
INFO