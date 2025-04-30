#!/bin/bash

rm -rf feeds/packages/net/curl

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/openwrt_orther.tar.gz
tar zxvfp rmoyulong.tar.gz

#修改qca-nss-drv启动顺序
NSS_DRV="feeds/nss_packages/qca-nss-drv/files/qca-nss-drv.init"
if [ -f "$NSS_DRV" ]; then
	sed -i 's/START=.*/START=85/g' $NSS_DRV

	cd $PKG_PATH && echo "qca-nss-drv has been fixed!"
fi

#修改qca-nss-pbuf启动顺序
NSS_PBUF="package/kernel/mac80211/files/qca-nss-pbuf.init"
if [ -f "$NSS_PBUF" ]; then
	sed -i 's/START=.*/START=86/g' $NSS_PBUF

	cd $PKG_PATH && echo "qca-nss-pbuf has been fixed!"
fi
