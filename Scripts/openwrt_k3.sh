#!/bin/bash

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/openwrt.tar.gz
tar zxvfp rmoyulong.tar.gz

echo '添加lwz322的K3屏幕插件'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/li1507/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo '========= K3屏幕插件 加载完成！ ========='

echo '替换lwz322的K3屏幕驱动插件'
rm -rf package/lean/k3screenctrl
git clone https://github.com/li1507/k3screenctrl_build.git package/lean/k3screenctrl/
echo '========= K3屏幕驱动插件 加载完成！ ========='

firmware='69027'
echo '替换无线驱动'
wget -nv https://github.com/li1507/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${firmware} -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
echo '========= 替换无线驱动替换完成！ ========='
