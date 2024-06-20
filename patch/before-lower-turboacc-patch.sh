#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh


#如果使用自定义的nss wifi插件或者不使用nss就要删除lede自带的qca
rm -rf openwrt/package/qca

#小于内核小于5.15版本，必须删除高版本的turboacc及依赖
rm -rf openwrt/package/luci-app-turboacc
rm -rf openwrt/package/network/utils/fullconenat-nft
rm -rf openwrt/package/network/utils/fullconenat

cd openwrt
git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-turboacc