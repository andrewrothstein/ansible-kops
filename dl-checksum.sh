#!/usr/bin/env sh
set -e
MIRROR=https://github.com/kubernetes/kops/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="${os}-${arch}"
    local url="$MIRROR/$ver/kops-${platform}.sha256"
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -SsLf $url)
}

dl_ver()
{
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver windows amd64
}

dl_ver ${1:-v1.30.3}
