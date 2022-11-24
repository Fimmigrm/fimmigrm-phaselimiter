#!/bin/bash

set -ex

cd $(mktemp -d)
curl -OL https://github.com/ai-mastering/phaselimiter/releases/download/v0.1.0/release.tar.xz
tar -Jxvf release.tar.xz
#git clone -b master --depth 1 --single-branch https://github.com/ai-mastering/phaselimiter.git phaselimiter

mkdir -p /etc/phaselimiter
cp -R phaselimiter/* /etc/phaselimiter/
cp phaselimiter/.python-version /etc/phaselimiter/

cd /etc/phaselimiter/
chmod +x built/*
cp built/* /usr/local/bin
chmod +x script/audio_detector
cp script/audio_detector /usr/local/bin/