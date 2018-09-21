# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "web_1" do |web_1|
# Box que utilizaremos
      web_1.vm.box = "ubuntu/trusty64"
# Asignamos los puertos
      web_1.vm.network "forwarded_port", guest: 80, host: 8080 
# Exportamos los directorios
      web_1.vm.synced_folder "./www_1/", "/var/www/html/"
# Script de aprovisionamiento
      web_1.vm.provision "shell", path: "Script.sh" 
  end

  config.vm.define "web_2" do |web_2|
# Box que utilizaremos
      web_2.vm.box = "ubuntu/trusty64"
# Asignamos los puertos
      web_2.vm.network "forwarded_port", guest: 80, host: 8008
# Exportamos los directorios
      web_2.vm.synced_folder "./www_2/", "/var/www/html/"
# Script de aprovisionamiento
      web_2.vm.provision "shell", path: "Script.sh"
  end
end
