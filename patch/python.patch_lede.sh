#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
rm -rf feeds/packages/lang/python

merge_package master https://github.com/coolsnowwolf/packages feeds/packages/lang lang/python

git clone -q --single-branch --depth=1 --branch=master https://github.com/immortalwrt/immortalwrt immortalwrt
rm -rf target/linux/bcm53xx
cp -rf ./immortalwrt/target/linux/bcm53xx target/linux/
rm -rf immortalwrt