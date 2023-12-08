#!/bin/bash

echo 'src-git kenzo8 https://github.com/kenzok8/small-package' >> feeds.conf.default
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockmusic package/luci-app-unblockmusic