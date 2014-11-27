#!/usr/bin/env bash
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -q -y software-properties-common python-software-properties
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:duh/golang
sudo apt-get update -q
sudo apt-get install -q -y git golang-stable
