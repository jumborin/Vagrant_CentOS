# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box"
  config.vm.guest = :linux
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.network "private_network", ip: "192.168.33.10"

  # config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "virtual_box"
    vb.gui = false
    vb.memory = "2048"
  end

  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end
  
  config.vm.provision "shell", inline: <<-SHELL
    mkdir data
    apt-get update
    apt-get -y install git
    # sudo apt-get install -y apache2
  SHELL
  
  #config.vm.synced_folder "data", "/vagrant"
end
