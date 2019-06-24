#!/usr/bin/env sh
VER=1.12.2
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download

dl()
{
    OS=$1
    PLATFORM=$2
    URL=$MIRROR/$VER/kops-$OS-$PLATFORM-sha1
    printf "  # %s\n  %s-%s: sha1:%s\n" $URL $OS $PLATFORM `curl -SsL $URL`
}

printf "'%s':\n" $VER
dl linux amd64
dl darwin amd64
dl windows amd64
