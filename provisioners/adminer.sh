#!/bin/bash
cat - <<FIN
#
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ dminer
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐ 
#
FIN
if [ ! -d "/usr/share/adminer" ]; then
  sudo mkdir /usr/share/adminer >> /vagrant/log/adminer.log 2>&1
  sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php >> /vagrant/log/adminer.log 2>&1
  sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php >> /vagrant/log/adminer.log 2>&1
fi
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf >> /vagrant/log/adminer.log 2>&1
sudo a2enconf adminer.conf >> /vagrant/log/adminer.log 2>&1
sudo systemctl reload apache2 >> /vagrant/log/adminer.log 2>&1
cat - <<INFO
#
Adminer (4.7.1)
Adminer usage : http://localhost:8080/adminer.php
Root username : root
Root password : root
#
INFO