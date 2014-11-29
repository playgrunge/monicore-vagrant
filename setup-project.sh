#!/usr/bin/env bash
echo "export GOPATH=/home/vagrant/gocode" >> ~/.profile
echo "export PATH=$PATH:/home/vagrant/gocode/bin" >> ~/.profile
. ~/.profile

mkdir ~/gocode
go get "github.com/gorilla/mux"
go get "github.com/codegangsta/gin"
mkdir -p $GOPATH/src/github.com/playgrunge
git clone https://github.com/playgrunge/monicore.git $GOPATH/src/github.com/playgrunge/monicore