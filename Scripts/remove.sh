#rm -rf feeds/packages/net/zerotier
#rm -rf feeds/luci/applications/luci-app-zerotier
rm -rf feeds/luci/applications/luci-app-turboacc
rm -rf feeds/packages/net/homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/kenzo/homeproxy
rm -rf feeds/kenzo/luci-app-homeproxy
####################################################
#彻底解决shadowsocks-libev编译错误
git clone https://github.com/rmoyulong/AX6-Actions_Lede rmoyulong
rm -rf feeds/packages/net/shadowsocks-libev
cp -rf ./rmoyulong/shadowsocks-libev feeds/packages/net/

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient
rm -rf package/libs/pcre
cp -rf ./rmoyulong/libs/mbedtls package/libs/
cp -rf ./rmoyulong/libs/ustream-ssl package/libs/
cp -rf ./rmoyulong/libs/uclient package/libs/
cp -rf ./rmoyulong/libs/pcre package/libs/

rm -rf rmoyulong
#####################################################
