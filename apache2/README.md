# Hosts Drupal 8 Box Vm

## Shared vragrant folder

Here is the `./Apache2 /` folder to share with the folder Apache2 in the linux system `/etc/apache2/sites-enabled`.

```vagrantfile
config.vm.synced_folder "./apache2/", "/etc/apache2/sites-enabled", owner: "root", group: "root", id: 'vhost'
```

In this folder we declare some configurations related to the hosts that Drupal needs.

## Drupal mod_rewrite
This file will help us configure apache2's mod_rewrite so that Drupal can rewrite urls, with pathauto, for example

```
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule ^(.*)$ index.php?q=$1 [QSA,L]
    AllowOverride All
</IfModule>
```

## Pretty Urls

If you are setting up your C:\Windows\System32\drivers\etc\hosts, consider changing the `ServerName` and` ServerAlias` preconfiguring the virtual machine.

```
ServerName drupal-8-box.mm
ServerAlias www.drupal-8-box.mm
```

## Root directory

Change the root directory if needed.
```
DocumentRoot /var/www/html/docroot
```