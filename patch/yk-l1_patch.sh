#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
rm -rf feeds/packages/lang/python

merge_package master https://github.com/rmoyulong/old_coolsnowwolf_packages feeds/packages/lang lang/python

#修改优酷路由宝l1的的内核版本
mv $GITHUB_WORKSPACE/patch/ramips/Makefile target/linux/ramips
#chmod -Rf 755 target/linux/ramips
ls -l target/linux/ramips         
