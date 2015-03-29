# README

##目的
VirtualBox上でCentos7の仮想環境を構築する。

##利用手順  
* 必要ソフトウェアをインストールする。  
* 下記コマンドを実行し、Guest Additionsを更新してくれるプラグインをインストールする。  
vagrant plugin install vagrant-vbguest  
* 本リポジトリを下記コマンドを実行してクローンする。  
git clone  
* 下記コマンドを実行して起動する。  
vagrant up  

##プラグイン一覧
####vagrant-vbguest  
Guest Additionsを更新してくれるプラグイン

####vagrant-omnibus  
ゲストOSに大して自動的にchefをインストールしてくれるプラグイン

####vagrant-aws  
awsをバックエンドとして使えるプラグイン

####vagrant-cachier
キャッシュを保存しておくことでvagrant upを高速化できるプラグイン

##ソフトウェアインストーラ  
####vagrant  
http://www.vagrantup.com/downloads.html  

####virtual box
https://www.virtualbox.org/wiki/Downloads  

##参考サイト
####vagrantドキュメント(日本語)  
http://lab.raqda.com/vagrant/  
