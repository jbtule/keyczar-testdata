#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get -y update
#first
apt-get -y install git
apt-get -y install mercurial
#cpp
apt-get -y install make
apt-get -y install g++
apt-get -y install scons
apt-get -y install swig
# java
apt-get -y install openjdk-6-jdk
apt-get -y install maven
# python
apt-get -y install python-dev
apt-get -y install python3-dev
apt-get -y install python-setuptools
apt-get -y install python3-setuptools
# dotnet
apt-get -y install mono-devel
# go
apt-get -y install golang
go get "github.com/jessevdk/go-flags"
go get "code.google.com/p/go.crypto/pbkdf2"
#apps
apt-get -y install vim
apt-get -y install tig

