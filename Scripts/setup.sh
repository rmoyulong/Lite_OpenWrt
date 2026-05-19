#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/VIKINGYFY/homeproxy package/homeproxy

rm -rf feeds/luci/applications/luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

rm -rf feeds/luci/applications/luci-app-ssr-plus
git_sparse_clone main https://github.com/kiddin9/op-packages luci-app-ssr-plus
git_sparse_clone main https://github.com/kiddin9/op-packages dns2socks-rust
git_sparse_clone main https://github.com/kiddin9/op-packages kcptun-client

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh
