cd openwrt
       
#修改优酷路由宝l1的的内核版本
rm -rf target/linux/ramips
git clone -q --single-branch --depth=1 --branch=master https://github.com/immortalwrt/immortalwrt immortalwrt

mv ./immortalwrt/target/linux/ramips target/linux
#chmod -Rf 755 target/linux/ramips
ls -l target/linux/ramips         
