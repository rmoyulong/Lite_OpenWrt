#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf package/kernel/cryptodev-linux
merge_package openwrt-22.03 https://github.com/openwrt/openwrt package package/kernel/cryptodev-linux
