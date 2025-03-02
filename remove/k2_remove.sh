rm -rf  package/openwrt-passwall/shadowsocks-rust
####################################################
#解决shadowsocks-libev编译错误
rm -rf feeds/packages/net/shadowsocks-libev
cp -rf ./package/shadowsocks-libev feeds/packages/net/
#####################################################