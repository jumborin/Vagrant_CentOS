# 環境構築

* 目的
  * VirtualBox上でCentos7の仮想環境を構築する。

* 利用手順  
  * 必要ソフトウェア(vagrantとvirtual box)をインストールする。  
    * virtual box  
    https://www.virtualbox.org/wiki/Downloads  
    * vagrant  
    http://www.vagrantup.com/downloads.html  
    * Teraterm(任意)  
    http://sourceforge.jp/projects/ttssh2/  
  * 下記コマンドを実行し、Guest Additionsを更新してくれるプラグインをインストールする。  
  vagrant plugin install vagrant-vbguest  
  vagrant plugin install vagrant-cachier  
  * 本リポジトリを下記コマンドを実行してクローンする。  
  git clone https://github.com/jumborin/vagrant.git
  * 下記コマンドを実行して起動する。  
  vagrant up  
  * 下記いづれかの方法で仮想環境に接続する。  
    * 下記teratermマクロを実行してアクセスする。  
    ※同じディレクトリにteraterm.iniを置くと設定ファイルも読み込んでくれます。  
    teraterm.ttl  
    * 下記コマンドを実行してアクセスする。  
    vagrant ssh  



* vagrantプラグイン一覧  
  * vagrant-vbguest  
  Guest Additionsを更新してくれるプラグイン  

  * vagrant-cachier  
  キャッシュを保存しておくことでvagrant upを高速化できるプラグイン  

  * vagrant-omnibus  
  ゲストOSに大して自動的にchefをインストールしてくれるプラグイン  

  * vagrant-aws  
  awsをバックエンドとして使えるプラグイン  



* 参考サイト  
  * vagrantドキュメント(公式・英語)  
  https://www.vagrantup.com/docs/index.html  
