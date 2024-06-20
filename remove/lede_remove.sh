rm -rf feeds/packages/net/aria2
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/kenzo/homeproxy
rm -rf feeds/kenzo/luci-app-homeproxy
rm -rf feeds/luci/applications/luci-app-turboacc
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-kodexplorer
rm -rf feeds/packages/lang/ruby
rm -rf package/network/utils/nftables
###############################
rm -rf  package/openwrt-passwall/shadowsocks-rust
rm -rf  package/openwrt-passwall/hysteria
####################################################
#解决shadowsocks-libev编译错误
rm -rf feeds/packages/net/shadowsocks-libev
cp -rf ./package/shadowsocks-libev feeds/packages/net/
#####################################################