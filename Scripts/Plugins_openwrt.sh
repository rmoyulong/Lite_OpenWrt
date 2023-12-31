#!/bin/bash

# 移除要替换的包
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-netgear
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/luci/applications/luci-app-serverchan
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-homeproxy

#echo 'src-git kenzo8 https://github.com/kenzok8/small-package' >> feeds.conf.default
echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >> feeds.conf.default
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockmusic package/luci-app-unblockmusic
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vlmcsd package/luci-app-vlmcsd
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-zerotier package/luci-app-zerotier
#svn co https://github.com/kiddin9/openwrt-packages/trunk/vlmcsd package/vlmcsd

rm -rf feeds/luci/modules/luci-base
rm -rf feeds/luci/modules/luci-mod-status
rm -rf feeds/packages/utils/coremark
rm -rf package/emortal/default-settings

svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-base feeds/luci/modules/luci-base
svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-mod-status feeds/luci/modules/luci-mod-status
svn export https://github.com/immortalwrt/packages/branches/master/utils/coremark package/new/coremark
svn export https://github.com/immortalwrt/immortalwrt/branches/master/package/emortal/default-settings package/emortal/default-settings
# svn export https://github.com/immortalwrt/immortalwrt/branches/openwrt-23.05/package/utils/mhz package/utils/mhz
chmod -Rf 755 feeds/luci/modules/luci-base
chmod -Rf 755 feeds/luci/modules/luci-mod-status
chmod -Rf 755 package/new/coremark
chmod -Rf 755 package/emortal/default-settings