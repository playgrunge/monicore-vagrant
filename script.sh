#!/usr/bin/env bash
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -qq
sudo apt-get install -q -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update -qq
sudo apt-get install -q -y libgtk2.0-0 sublime-text-installer

sudo apt-get install -q -y git curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

sudo npm install -g bower
sudo npm install -g grunt-cli

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update -qq
sudo apt-get install -q -y mongodb-org
