#!/usr/bin/env bash

apt-get -y -q update
apt-get -y -q upgrade
apt-get -y -q install build-essential ruby ruby-dev nodejs python-setuptools python-dev

mkdir -p /vagrant/_logs

gem install jekyll

easy_install pip
pip install Pygments 
pip install supervisor --pre

cp /vagrant/_vagrant/supervisord.conf /etc/supervisord.conf
cp /vagrant/_vagrant/supervisord.init.sh /etc/init.d/supervisord
chmod +x /etc/init.d/supervisord
update-rc.d supervisord defaults

service supervisord start
