# Drupal 8 Box Vm
Box Builded by trstndbrtl with http://revuesdecode.com

```
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
```

## About
This box proposes an installation of the suite of tools allowing to work with drupal 8.

## Prerequisites

- VirtualBox >= 5.2
- Vagrant >= 2.2.4

## Configuration

Some configurations, such as the name of the box or the memory allocated to the machine are possible via the config.yml file at the root of the project.

```yml
# Choose name box
name: "drupal-8-box"
# Choose the Ubuntu version 
box: "ubuntu/bionic64"
# Allow memory
memory: "2048"
# Allow Cpus
cpus: 2
# Choose an Ip
ip: "192.168.33.15"
# Choose a Drupal 8 version
release: "8.7.3"
```


## Run the box
Go to your projet folder `cd path/drupal-8-box` and run the box with `vagrant up`, to connect to the box run `vagrant ssh`.

```bash
vagrant@ubuntu-bionic:/vagrant$ tree drupal-8-box
drupal-8-box
├── README.md
├── Vagrantfile
├── apache2
│   ├── 000-default.conf
│   └── README.md
├── config.yml
├── log
│   └── README.md
├── provisioners
│   ├── README.md
│   ├── adminer.sh
│   ├── apache2.sh
│   ├── composer.sh
│   ├── drupal.sh
│   ├── drush.sh
│   ├── mysql.sh
│   ├── php.sh
│   ├── ubuntu.sh
│   └── welcome.sh
├── ubuntu-bionic-18.04-cloudimg-console.log
├── utils
│   ├── README.md
│   └── vagrant.rb
└── www
    └── html
```

## Provisioning

```bash
#
#   ▄▀▀▄ ▄▀▀▄ 
#  █   █    █ 
#  ▐  █    █  
#    █    █   
#     ▀▄▄▄▄▀  
#
vagrant@ubuntu-bionic:~$ cat /etc/issue
Ubuntu 18.04.2 LTS
#
vagrant@ubuntu-bionic:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 18.04.2 LTS
Release:        18.04
Codename:       bionic
#
```

```bash
#
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ 
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐ 
#
vagrant@ubuntu-bionic:~$ apachectl -V
Server version: Apache/2.4.29 (Ubuntu)
Server built:   2019-04-03T13:22:37
Server's Module Magic Number: 20120211:68
Server loaded:  APR 1.6.3, APR-UTIL 1.6.1
Compiled using: APR 1.6.3, APR-UTIL 1.6.1
Architecture:   64-bit
Server MPM:     prefork
  threaded:     no
    forked:     yes (variable process count)
```

```bash
#
#   ▄▀▀▄▀▀▀▄ 
#  █   █   █ 
#  ▐  █▀▀▀▀  
#     █      
#   ▄▀       
#  █         
#  ▐ 
#
vagrant@ubuntu-bionic:~$ php --version
PHP 7.2.19-0ubuntu0.18.04.1 (cli) (built: Jun  4 2019 14:48:12) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.2.0, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.2.19-0ubuntu0.18.04.1, Copyright (c) 1999-2018, by Zend Technologies
#
```
#### Module Php (php -m)
```bash
#
vagrant@ubuntu-bionic:~$ sudo dpkg --get-selections | grep -v deinstall | grep php
libapache2-mod-php                              install
libapache2-mod-php7.2                           install
php                                             install
php-apcu                                        install
php-apcu-bc                                     install
php-bcmath                                      install
php-cli                                         install
php-common                                      install
php-curl                                        install
php-dompdf                                      install
php-font-lib                                    install
php-fpm                                         install
php-gd                                          install
php-gettext                                     install
php-imagick                                     install
php-imap                                        install
php-intl                                        install
php-json                                        install
php-mbstring                                    install
php-mysql                                       install
php-pear                                        install
php-php-gettext                                 install
php-xml                                         install
php-zip                                         install
php7.2                                          install
php7.2-bcmath                                   install
php7.2-cli                                      install
php7.2-common                                   install
php7.2-curl                                     install
php7.2-fpm                                      install
php7.2-gd                                       install
php7.2-imap                                     install
php7.2-intl                                     install
php7.2-json                                     install
php7.2-mbstring                                 install
php7.2-mysql                                    install
php7.2-opcache                                  install
php7.2-readline                                 install
php7.2-xml                                      install
php7.2-zip                                      install
#
```

```bash
#
#   ▄▀▀▄ ▄▀▄ 
#  █  █ ▀  █ 
#  ▐  █    █ 
#    █    █  
#  ▄▀   ▄▀   
#  █    █    
#  ▐    ▐      
#
vagrant@ubuntu-bionic:~$ mysqld --help
mysqld  Ver 5.7.26-0ubuntu0.18.04.1 for Linux on x86_64 ((Ubuntu))
Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.
#
bd name : drupal
bd username : root
bd password : root
#
```

```bash
#
#   ▄▀▀█▄  
#  ▐ ▄▀ ▀▄ 
#    █▄▄▄█ 
#   ▄▀   █ 
#  █   ▄▀  
#  ▐   ▐ 
#
#
Adminer (4.7.1)
Adminer usage : http://localhost:8080/adminer.php
Root username : root
Root password : root
#
```

```bash
#
#   ▄▀▄▄▄▄  
#  █ █    ▌ 
#  ▐ █      
#    █      
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐  
#
vagrant@ubuntu-bionic:~$ composer -V
Composer version 1.8.6 2019-06-11 15:03:05
#
```

```bash
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ 
#    █    █ 
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐
#
vagrant@ubuntu-bionic:~$ drush -V
Drush Commandline Tool 9.7.0
#
```


```bash
#
#   ▄▀▀█▄▄  
#  █ ▄▀   █ 
#  ▐ █    █ 
#    █    █ 
#   ▄▀▄▄▄▄▀ 
#  █     ▐  
#  ▐
#
Drupal 8 and Drupal Console
#
```
