#如果使用自定义的nss wifi插件就要删除lede自带的qca
rm -rf openwrt/package/qca

git config --global user.name "OpenWrt Builder"
git config --global user.email "buster-openwrt@ovvo.uk"
cp $GITHUB_WORKSPACE/patch/0001-show-soc-status-on-luci.patch openwrt/feeds/luci
cd openwrt/feeds/luci
git am 0001-show-soc-status-on-luci.patch