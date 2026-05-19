#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/VIKINGYFY/homeproxy package/homeproxy

rm -rf feeds/luci/applications/luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

git clone https://github.com/stupidloud/helloworld package/helloworld
rm -rf package/helloworld/geoview
rm -rf package/helloworld/hysteria
rm -rf package/helloworld/xray-core
rm -rf package/helloworld/sing-box
rm -rf package/helloworld/v2ray-geodata 

merge_package master https://github.com/immortalwrt/packages package net/sing-box
rm -f package/sing-box/Makefile
curl -L -o package/sing-box/Makefile https://raw.githubusercontent.com/kiddin9/op-packages/refs/heads/main/sing-box/Makefile

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh
