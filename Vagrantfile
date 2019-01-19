Vagrant.configure("2") do |config|

  # vbguest整合性エラー防止のため、自動アップデート抑止(自動アップデートしたい場合はコメントアウトすること)
  #config.vbguest.auto_update = false
  #config.vbguest.no_remote = true
  
  #Encoding.default_external = 'UTF-8'
  #URL：https://app.vagrantup.com/centos/boxes/7
  config.vm.box = "CentOS7"
  config.vm.box_url = "file://./package.box"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  #config.vm.network "private_network", ip: "192.168.100.10"

  #config.vm.network "public_network"

  config.vm.provider :virtualbox do |vb|
    vb.name = "CentOS_7"
    vb.gui = true
    vb.memory = "2048"
    vb.cpus = 2
  end
  
  config.vm.provision "shell", inline: <<-SHELL
  
    # Create SymboricLink
    #ln -s /vagrant /home/vagrant/vagrant.link
    #cp -f /vagrant/.vimrc /home/vagrant/.vimrc
    #sudo chown -R vagrant:vagrant /home/vagrant/.vimrc
    #mkdir -p /home/vagrant/.vim/bundle
    #sudo chown -R vagrant:vagrant /home/vagrant/.vim
    
    # Yum Config
    sudo yum -y install epel-release
    sudo yum -y upgrade
    sudo yum -y update
    sudo yum -y install yum-plugin-security
    sudo yum --security update
    
    # Util Command Tool
    sudo yum -y install zip
    
    # Upload Tool
    sudo yum -y install git
    #git config --global user.name "test"
    #git config --global user.email test@example.com
    #git config --global core.editor vim
    #git config --global color.ui true
    #git config --global core.autocrlf input
    
    #sudo yum -y install subversion
    #sudo yum -y install ftp
    
    # Java
    #sudo yum -y install java
    #sudo yum -y install tomcat
    
    # Ruby
    #sudo yum -y install ruby
    #sudo yum -y install gem
    #gem install bundler
    #gem update
    
    
    # Vim Config 
    #git clone https://github.com/Shougo/neobundle.vim /home/vagrant/.vim/bundle/neobundle.vim
    #sudo chown -R vagrant:vagrant /home/vagrant/.vim/bundle/neobundle.vim
    #sudo yum -y install vim-enhanced
    
    # NodeJS
    #sudo yum -y install nodejs npm --enablerepo=epel
    #npm install -g jshint
    
    #sudo yum -y install openssl-devel
    #sudo yum -y install libssh2
    
    # CoffeeScript
    #cd /home/vagrant
    #npm install -g coffee-script
    
    # Database
    #sudo yum -y install mysql
    #sudo yum -y install postgresql
    
    # Web
    #sudo yum -y install httpd
    
    # Application
    # git clone [ApplicationUrl]
    
    # Cleaner
    #sudo yum clean all
    
    
    # Desktop Tool
    sudo yum -y groupinstall "GNOME Desktop"
    sudo startx
    sudo systemctl set-default graphical.target
    
  SHELL
  
end
