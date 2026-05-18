#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

merge_package master https://github.com/coolsnowwolf/packages package lang/rust
#git clone https://github.com/stupidloud/helloworld package/helloworld

rm -rf package/helloworld/v2ray-geodata
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

merge_package master https://github.com/kenzok8/small/ package shadowsocks-rust
merge_package master https://github.com/kenzok8/small/ package shadowsocks-libev
merge_package master https://github.com/kenzok8/small/ package shadowsocksr-libev
merge_package master https://github.com/kenzok8/small/ package sing-box
merge_package master https://github.com/kenzok8/small/ package luci-app-ssr-plus
merge_package master https://github.com/kenzok8/small/ package xray-core
merge_package master https://github.com/kenzok8/small/ package luci-app-mosdns
merge_package master https://github.com/kenzok8/small/ package mosdns
merge_package master https://github.com/kenzok8/small/ package v2dat

rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/VIKINGYFY/homeproxy package/luci-app-homeproxy

rm -rf feeds/luci/applications/luci-app-amlogic
rm -rf package/luci-app-amlogic
git clone -b main https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh
