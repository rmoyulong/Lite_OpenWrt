#!/bin/bash

# 回退源码2024-07-01
#git reset --hard 781b3b4c0b5991a55811b1ac13524786fe81ba5a
#git checkout -b 781b3b
cp -f $GITHUB_WORKSPACE/patch/k3/kernel-5.4 include
cp -f $GITHUB_WORKSPACE/patch/k3/782-net-next-1-of-net-pass-the-dst-buffer-to-of_get_mac_address.patch target/linux/generic/backport-5.4

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/lede.tar.gz
tar zxvfp rmoyulong.tar.gz

#lede
#echo 'src-git packages https://github.com/coolsnowwolf/packages' > feeds.conf.default
#echo 'src-git luci https://github.com/coolsnowwolf/luci' >> feeds.conf.default
#echo 'src-git routing https://git.openwrt.org/feed/routing.git;openwrt-21.02' >> feeds.conf.default
#echo 'src-git telephony https://git.openwrt.org/feed/telephony.git;openwrt-21.02' >> feeds.conf.default


echo '添加lwz322的K3屏幕插件'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/yangxu52/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo '=========Add k3screen plug OK!========='

echo '替换lwz322的K3屏幕驱动插件'
rm -rf package/lean/k3screenctrl
git clone https://github.com/yangxu52/k3screenctrl_build.git package/lean/k3screenctrl/
echo '=========Replace k3screen drive plug OK!========='

FIRMWARE=69027
echo '替换无线驱动'
echo 'https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${{FIRMWARE}}'
wget -nv https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.69027 -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
echo '=========Replace k3 wireless firmware OK!========='

# 取消主题默认设置
#find package/luci-theme-*/* -type f -name '*luci-theme-*' -print -exec sed -i '/set luci.main.mediaurlbase/d' {} \;
