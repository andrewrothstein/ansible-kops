#!/usr/bin/env sh
VER=1.11.1
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download

dl()
{
    OS=$1
    PLATFORM=$2
    printf "$OS-$PLATFORM: sha1:"
    curl -SsL $MIRROR/$VER/kops-$OS-$PLATFORM-sha1
}

dl linux amd64
dl darwin amd64
dl windows amd64
