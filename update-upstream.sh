#!/bin/sh

set -ex

docker build -t ath-upstream -f ath-upstream.dockerfile .
docker run -it --rm -v${PWD}:/out ath-upstream
rm -rf upstream /tmp/upstream
mkdir -p /tmp/upstream
tar --strip-components=1 -xJf linux-source-*.tar.xz -C /tmp/upstream
cp -r /tmp/upstream/drivers/net/wireless/ath upstream