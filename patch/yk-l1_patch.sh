#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt

rm -rf feeds/packages/net/nmap/*
git_sparse_clone master https://github.com/immortalwrt/packages /net/nmap
cp -rf package/nmap/* feeds/packages/net/nmap
rm -rf package/nmap

#修改优酷路由宝l1的的内核版本
mv $GITHUB_WORKSPACE/patch/ramips/Makefile target/linux/ramips
#chmod -Rf 755 target/linux/ramips
ls -l target/linux/ramips         
