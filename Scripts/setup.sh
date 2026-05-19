#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/luci/applications/luci-app-homeproxy
git clone https://github.com/VIKINGYFY/homeproxy package/luci-app-homeproxy

cd package
$GITHUB_WORKSPACE/Scripts/Packages.sh
$GITHUB_WORKSPACE/Scripts/Handles.sh
