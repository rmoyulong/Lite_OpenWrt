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

#git clone https://github.com/immortalwrt/immortalwrt.git imm
#sudo mv ./imm/package/emortal/default-settings package/emortal/default-settings
#rm -rf imm

#git clone https://github.com/immortalwrt/packages.git ipackages
#sudo mv ./ipackages/utils/coremark package/new/coremark
#rm -rf ipackages

#git clone https://github.com/immortalwrt/luci.git iluci
#sudo mv ./iluci/modules/luci-base feeds/luci/modules/luci-base
#sudo mv ./iluci/modules/luci-mod-status feeds/luci/modules/luci-mod-status
#rm -rf iluci

svn_export() {
	# 参数1是分支名, 参数2是子目录, 参数3是目标目录, 参数4仓库地址
	trap 'rm -rf "$TMP_DIR"' 0 1 2 3
	TMP_DIR="$(mktemp -d)" || exit 1
	[ -d "$3" ] || mkdir -p "$3"
	TGT_DIR="$(cd "$3"; pwd)"
	cd "$TMP_DIR" && \
	git init >/dev/null 2>&1 && \
	git remote add -f origin "$4" >/dev/null 2>&1 && \
	git checkout "remotes/origin/$1" -- "$2" && \
	cd "$2" && cp -a . "$TGT_DIR/"
}

svn_export "master" "modules/luci-base" "feeds/luci/modules" "https://github.com/immortalwrt/luci"
svn_export "master" "modules/luci-mod-status" "feeds/luci/modules" "https://github.com/immortalwrt/luci"
svn_export "master" "utils/coremark" "package/new" "https://github.com/immortalwrt/packages"
svn_export "master" "package/emortal/default-settings" "package/emortal" "https://github.com/immortalwrt/immortalwrt"

chmod -Rf 755 feeds/luci/modules/luci-base
chmod -Rf 755 feeds/luci/modules/luci-mod-status
chmod -Rf 755 package/new/coremark
chmod -Rf 755 package/emortal/default-settings