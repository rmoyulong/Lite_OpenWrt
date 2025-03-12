#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

rm -rf feeds/packages/golang
rm -rf feeds/packages/lang/golang
merge_package master https://github.com/immortalwrt/packages package lang/golang