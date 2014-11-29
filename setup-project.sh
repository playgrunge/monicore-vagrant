#!/usr/bin/env bash
echo "export GOPATH=/home/vagrant/gocode" >> ~/.profile
echo "export PATH=$PATH:/home/vagrant/gocode/bin" >> ~/.profile
. ~/.profile

mkdir -p ~/gocode
go get "github.com/gorilla/mux"
go get "github.com/codegangsta/gin"
mkdir -p $GOPATH/src/github.com/playgrunge
git clone https://github.com/playgrunge/monicore.git $GOPATH/src/github.com/playgrunge/monicore

mkdir -p ~/'.config/sublime-text-3/Installed Packages/'
wget "https://sublime.wbond.net/Package%20Control.sublime-package"
mv 'Package Control.sublime-package' ~/'.config/sublime-text-3/Installed Packages/'
