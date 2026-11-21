#!/usr/bin/env bash
set -e
REPO="zellajnovat/nativemark"
TAG="gentle-cedar-gentle-garden"
LIB="layered-servo.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
