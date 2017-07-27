#!/usr/bin/env sh
VER=1.6.2
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download
APP=kops
wget -O $DIR/$APP-darwin-amd64-$VER $MIRROR/$VER/$APP-darwin-amd64
wget -O $DIR/$APP-linux-amd64-$VER $MIRROR/$VER/$APP-linux-amd64
sha256sum $DIR/$APP-*-$VER
#shasum -a 256 $DIR/$APP-*-$VER
