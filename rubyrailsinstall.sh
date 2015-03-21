#!/bin/bash

#Rails環境構築のための準備をするシェルスクリプト

# apacheのインストール
echo "apacheのインストール中だよん"
sudo yum -y install httpd

# ファイアーウォール設定
sudo chkconfig httpd on
sudo service iptables stop
sudo chkconfig iptables off

# CentOSに入ってるRubyはバージョンが古いのでアンインストール
sudo yum -y remove ruby

# gitをインストール
echo "gitのインストール中だよん"
sudo yum -y install git

# rbenvインストール
echo "rbenvのインストール中だよん"
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
cd ~/.rbenv/plugins/ruby-build
sudo ./install.sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

rbenv



#RubyとRailsをインストールするシェルスクリプト

# Rubyのインストール
echo "Rubyのインストール中だよん"
rbenv install 2.1.2
rbenv rehash
rbenv global 2.1.2
ruby -v

# Railsのインストール
echo "Railsのインストール中だよん"
rbenv exec gem install rails -v 4.1.4
rbenv rehash
source ~/.bash_profile
