#!/usr/bin/env sh
VER=1.13.0
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download

dl()
{
    OS=$1
    ARCH=$2
    PLATFORM=${OS}-${ARCH}
    URL=$MIRROR/$VER/kops-$PLATFORM-sha1
    printf "    # %s\n" $URL
    printf "    %s: sha1:%s\n" $PLATFORM `curl -SsL $URL`
}

printf "  '%s':\n" $VER
dl linux amd64
dl darwin amd64
dl windows amd64
