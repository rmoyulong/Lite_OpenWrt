cd openwrt
       
#修改优酷路由宝l1 lede 版本的内核版本
#rm -rf target/linux/ramips
git clone -q --single-branch --depth=1 --branch=master https://github.com/immortalwrt/immortalwrt immortalwrt

mv $GITHUB_WORKSPACE/patch/ramips/6.6/Makefile target/linux/ramips
mv ./immortalwrt/target/linux/ramips/patches-6.6 target/linux/ramips
mv ./immortalwrt/target/linux/ramips/mt7620/config-6.6 target/linux/ramips/mt7620
#chmod -Rf 755 target/linux/ramips
ls -l target/linux/ramips         
