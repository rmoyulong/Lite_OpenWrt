#!/bin/bash

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient
rm -rf package/network/services/hostapd
rm -rf feeds/packages/net/curl

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/union-openwrt/releases/download/union_package/openwrt-base.tar.gz
tar zxvfp rmoyulong.tar.gz