cd openwrt
       
#修改优酷路由宝l1的的内核版本
mv $GITHUB_WORKSPACE/patch/ramips/Makefile target/linux/ramips
#chmod -Rf 755 target/linux/ramips
ls -l target/linux/ramips         
