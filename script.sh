#!/usr/bin/env bash
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -qq
sudo apt-get install -q -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:duh/golang
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update -qq
sudo apt-get install -q -y git golang 
sudo apt-get install -q -y libgtk2.0-0 sublime-text-installer

sudo apt-get install -q -y curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -q -y nodejs
sudo apt-get install -q -y build-essential

sudo npm install -g ember-cli@0.1.4
sudo npm install -g bower