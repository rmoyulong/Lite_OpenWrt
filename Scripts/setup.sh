#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/VIKINGYFY/homeproxy package/homeproxy

rm -rf feeds/luci/applications/luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

git clone https://github.com/stupidloud/helloworld package/helloworld
rm -rf package/helloworld/geoview
rm -rf package/helloworld/hysteria
rm -rf package/helloworld/xray-core

git_sparse_clone master https://github.com/kenzok8/small sing-box

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh
