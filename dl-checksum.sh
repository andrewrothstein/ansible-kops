#!/usr/bin/env sh
VER=1.7.0
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download
APP=kops
for platform in darwin-amd64 linux-amd64
do
    wget -O $DIR/$APP-$platform.$VER $MIRROR/$VER/$APP-$platform
done
sha256sum $DIR/$APP-*.$VER
#shasum -a 256 $DIR/$APP-*.$VER
