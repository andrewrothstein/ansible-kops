#!/usr/bin/env sh
VER=${1:-1.13.2}
DIR=~/Downloads
MIRROR=https://github.com/kubernetes/kops/releases/download

dl()
{
    os=$1
    arch=$2
    platform=${os}-${arch}
    url=$MIRROR/$VER/kops-$platform-sha1
    printf "    # %s\n" $url
    printf "    %s: sha1:%s\n" $platform `curl -SsL $url`
}

printf "  '%s':\n" $VER
dl linux amd64
dl darwin amd64
dl windows amd64
