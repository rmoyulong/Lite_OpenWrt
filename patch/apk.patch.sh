#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
rm -rf package/system/apk

merge_package master https://github.com/immortalwrt/immortalwrt package/system/apk package/system/apk
