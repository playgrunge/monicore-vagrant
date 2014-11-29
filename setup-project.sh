#!/usr/bin/env bash
mkdir /home/vagrant/gocode
export GOPATH=/home/vagrant/gocode
export PATH=$PATH:$GOPATH/bin
go get "github.com/gorilla/mux"
go get "github.com/codegangsta/gin"
mkdir -p $GOPATH/src/github.com/playgrunge
git clone https://github.com/playgrunge/monicore.git $GOPATH/src/github.com/playgrunge/monicore