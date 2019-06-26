# -*- mode: ruby -*-
# vi: set ft=ruby :

# Load utils to parse yml
require_relative 'utils/vagrant'
# Set host_dis variable
host_dir = File.dirname(File.expand_path(__FILE__))
# Parse the config.yml
# And store configuration in vconfig array
vconfig = load_config(
  [
    "#{host_dir}/config.yml",
  ]
)
Vagrant.configure("2") do |config|
  # Box name
  config.vm.box = vconfig['box']
  # Box display
  config.vm.provider "virtualbox" do |vb|
    vb.name = vconfig['name']
    vb.customize ["modifyvm", :id, "--memory", vconfig['memory']]
    vb.customize ["modifyvm", :id, "--cpus", vconfig['cpus']]
  end
  # Network informations
  # Work on http://localhost
  config.vm.network "forwarded_port", guest: 80, host: 80
  # or uncomment the private_network and comment the forwarded_port to use an IP
  # config.vm.network "private_network", ip: vconfig['ip']
  config.vm.synced_folder "./www/", "/var/www", id: "source"
  config.vm.synced_folder "./apache2/", "/etc/apache2/sites-enabled", owner: "root", group: "root", id: "vhost"
  # Provision for the Serveur
  config.vm.provision "shell", path: "provisioners/ubuntu.sh"
  config.vm.provision "shell", path: "provisioners/apache2.sh"
  config.vm.provision "shell", path: "provisioners/php.sh"
  config.vm.provision "shell", path: "provisioners/mysql.sh"
  config.vm.provision "shell", path: "provisioners/adminer.sh"
  config.vm.provision "shell", path: "provisioners/composer.sh"
  config.vm.provision "shell", path: "provisioners/drush.sh", privileged: false
  # Provision for Drupal
  config.vm.provision "shell" do |drpl|
    drpl.path = "provisioners/drupal.sh"
    drpl.args = vconfig['release']
  end
  # Install Drupal Console
  config.vm.provision "shell", path: "provisioners/drupalconsole.sh"
  # Restart Apache2
  config.vm.provision "shell", run: "always", inline: "sudo a2enmod rewrite"
  config.vm.provision "shell", run: "always", inline: "/etc/init.d/apache2 restart"
  # Run Welcome info
  config.vm.provision "shell", run: "always", path: "provisioners/welcome.sh"
end