#!/bin/bash

# 科学上网插件
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git batman https://git.open-mesh.org/openwrt-feed-devel.git' >> feeds.conf.default

echo '添加lwz322的K3屏幕插件'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/yangxu52/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo '=========Add k3screen plug OK!========='

echo '替换lwz322的K3屏幕驱动插件'
rm -rf package/lean/k3screenctrl
git clone https://github.com/yangxu52/k3screenctrl_build.git package/lean/k3screenctrl/
echo '=========Replace k3screen drive plug OK!========='

FIRMWARE='69027'
echo '替换无线驱动'
wget -nv https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${FIRMWARE} -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
echo '=========Replace k3 wireless firmware OK!========='




