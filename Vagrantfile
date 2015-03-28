Vagrant.configure(2) do |config|

  Encoding.default_external = 'UTF-8'
  config.vm.box = "https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box"
  config.vm.guest = :linux
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.synced_folder "./sync", "/vagrant/sync"
  
  # config.vm.network "private_network", ip: "192.168.33.10"

  # config.vm.network "public_network"

  config.vm.provider :virtualbox do |vb|
    #vb.name = "virtual_box"
    vb.gui = false
    vb.memory = "2048"
    vb.cpus = 2
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    # Create SymboricLink
    ln -s /vagrant /home/vagrant/vagrant.link
    
    sudo yum -y update
    sudo yum -y install git
    sudo yum -y install ftp
    sudo yum -y install gnome-desktop3
    sudo yum -y install apt
    
    #Java
    sudo yum -y install java
    
    #Ruby
    sudo yum -y install ruby
    gem install bundler
    
    # Vim
    sudo yum -y install vim-enhanced
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    
    
    # CoffeeScript
    cd /usr/local/src
    sudo wget http://nodejs.org/dist/latest/node-v0.12.1.tar.gz
    sudo tar -zxvf node-v0.12.1.tar.gz
    cd node-v0.12.1.tar.gz
    sudo ./configure
    sudo make
    sudo make install
    
    sudo curl https://npmjs.org/install.sh | sh
    sudo npm install -g coffee-script
    
    # Database
    #sudo yum -y install mysql
    #sudo yum -y install postgresql
    
    # Web
    #sudo yum -y install tomcat
    
  SHELL
  
end
