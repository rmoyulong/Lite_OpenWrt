#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/packages/lang/rust
merge_package master https://github.com/coolsnowwolf/packages package lang/rust

git clone https://github.com/stupidloud/helloworld package/helloworld
rm -rf feeds/packages/net/xray-core

rm -rf package/helloworld/v2ray-geodata
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh