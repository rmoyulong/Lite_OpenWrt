#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

./scripts/feeds update -a
./scripts/feeds install -a

rm -rf feeds/luci/applications/luci-app-homeproxy
merge_package main https://github.com/VIKINGYFY/packages package luci-app-homeproxy

rm -rf feeds/luci/applications/luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

rm -rf feeds/luci/applications/luci-app-ssr-plus
git clone https://github.com/stupidloud/helloworld package/helloworld

rm -rf feeds/packages/net/hysteria/*
rm -rf feeds/packages/net/xray-core/*
rm -rf feeds/packages/net/v2ray-core/*
cp -rf package/helloworld/hysteria/* feeds/packages/net/hysteria
cp -rf package/helloworld/xray-core/* feeds/packages/net/xray-core
cp -rf package/helloworld/v2ray-core/* feeds/packages/net/v2ray-core

rm -rf feeds/packages/net/v2ray-geodata
rm -rf package/helloworld/v2ray-geodata
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

rm -rf feeds/packages/net/sing-box
merge_package main https://github.com/VIKINGYFY/packages  feeds/packages/net sing-box

rm -rf feeds/packages/net/miniupnpd
merge_package main https://github.com/kiddin9/op-packages feeds/packages/net miniupnpd
rm -rf feeds/luci/applications/luci-app-upnp
merge_package main https://github.com/kiddin9/op-packages feeds/luci/applications luci-app-upnp

git clone https://github.com/coolsnowwolf/packages coolsnowwolf
                
rm -rf feeds/packages/utils/attr
cp -rf ./coolsnowwolf/utils/attr feeds/packages/utils
                
rm -rf feeds/packages/utils/acl
cp -rf ./coolsnowwolf/utils/acl feeds/packages/utils
                
rm -rf feeds/packages/utils/coreutils
cp -rf ./coolsnowwolf/utils/coreutils feeds/packages/utils
                
rm -rf feeds/packages/libs/libffi
cp -rf ./coolsnowwolf/libs/libffi feeds/packages/libs
cp -rf ./coolsnowwolf/libs/libffi package
                
rm -rf coolsnowwolf

./scripts/feeds install -a

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh