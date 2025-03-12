#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
#####################################################
rm -rf feeds/packages/lang/rust
merge_package master https://github.com/coolsnowwolf/packages feeds/packages lang/rust
#####################################################