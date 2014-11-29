#!/usr/bin/env bash
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -qq
sudo apt-get install -q -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:duh/golang
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update -qq
sudo apt-get install -q -y git golang 
sudo apt-get install -q -y libgtk2.0-0 sublime-text-installer