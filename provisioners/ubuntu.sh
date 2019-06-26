#!/bin/bash
cat - <<FIN
#
#   ▄▀▀▄ ▄▀▀▄ 
#  █   █    █ 
#  ▐  █    █  
#    █    █ buntu 
#     ▀▄▄▄▄▀
#
FIN
# Start with new file log
cd /vagrant/log
rm * >> /vagrant/log/ubuntu.log 2>&1
# Updating packages
apt-get update >> /vagrant/log/ubuntu.log 2>&1
sudo apt-get install lsb-core -y >> /vagrant/log/ubuntu.log 2>&1
echo -e "$(lsb_release -a)"
cat - <<INFO
#
Ubuntu updated
lsb-core installed
#
INFO