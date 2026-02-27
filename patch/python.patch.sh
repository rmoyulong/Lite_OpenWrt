#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
rm -rf feeds/packages/lang/python

merge_package master https://github.com/rmoyulong/old_coolsnowwolf_packages feeds/packages/lang lang/python

#rm libs/mbedtls/Makefile
cp -f $GITHUB_WORKSPACE/patch/mbedtls/Makefile package/libs/mbedtls/Makefile