# www/html folder

If you prefer to install Drupal with Composer, comment the installation script of drupal in the Vagrantfile and do the installation with Composer by connecting in ssh to the box.

``` yml
  # Provision for Drupal
  config.vm.provision "shell" do |drpl|
    drpl.path = "provisioners/drupal.sh"
    drpl.args = vconfig['release']
  end
```