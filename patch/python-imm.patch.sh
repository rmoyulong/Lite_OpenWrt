#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
rm -rf feeds/packages/lang/python

merge_package master https://github.com/rmoyulong/old_coolsnowwolf_packages feeds/packages/lang lang/python

#替换回qualcommax6.12
unzip $GITHUB_WORKSPACE/patch/qualcommax.zip
cat feeds.conf.default