#!/usr/bin/env bash
wget "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz"
tar xf go1.4.linux-amd64.tar.gz
rm go1.4.linux-amd64.tar.gz

export PATH=$PATH:/home/vagrant/go/bin
echo "export GOROOT=/home/vagrant/go" >> ~/.profile
echo "export GOPATH=/home/vagrant/gocode" >> ~/.profile
echo "export PATH=$PATH:/home/vagrant/gocode/bin" >> ~/.profile
. ~/.profile

mkdir -p ~/gocode
go get "github.com/gorilla/mux"
go get "github.com/codegangsta/gin"
go get "github.com/gorilla/websocket"
go get "gopkg.in/mgo.v2"
go get "github.com/PuerkitoBio/goquery"
go get "github.com/kurrik/twittergo"
mkdir -p $GOPATH/src/github.com/playgrunge
git clone https://github.com/playgrunge/monicore.git $GOPATH/src/github.com/playgrunge/monicore

mkdir -p ~/'.config/sublime-text-3/Installed Packages/'
wget "https://sublime.wbond.net/Package%20Control.sublime-package"
mv 'Package Control.sublime-package' ~/'.config/sublime-text-3/Installed Packages/'
