#!/bin/bash

# 移除要替换的包
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/luci/applications/luci-app-serverchan
rm -rf feeds/luci/applications/luci-app-msd_lite

#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

echo 'src-git helloworld https://github.com/stupidloud/helloworld' >> feeds.conf.default
git_sparse_clone main https://github.com/kiddin9/kwrt-packages shadowsocks-rust
merge_package master https://github.com/coolsnowwolf/packages package net/shadowsocks-libev
#git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-turboacc

git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
git clone --depth=1 https://github.com/Jason6111/luci-app-netdata package/luci-app-netdata
git clone --depth=1 https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone --depth=1 -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush package/luci-app-serverchan

# 在线用户
git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-onliner
sudo chmod -Rf 755 package/luci-app-onliner

# msd_lite
git clone --depth=1 https://github.com/ximiTech/luci-app-msd_lite package/luci-app-msd_lite
git clone --depth=1 https://github.com/ximiTech/msd_lite package/msd_lite

#dos2unix
merge_package master https://github.com/immortalwrt/packages package utils/dos2unix