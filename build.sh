#!/bin/bash

. ./setenv.sh

docker build --build-arg TARGET_DEVICE=CONFIG_TARGET_ramips_mt7688_DEVICE_$TARGET_DEVICE \
  --build-arg CACHEBUST=$(date +%s) \
   -t "$REPO:$TAG" .

docker tag $REPO:$TAG $REPO:latest
