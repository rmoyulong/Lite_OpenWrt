#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh

cd openwrt
#####################################################
rm -rf feeds/packages/lang/rust
git_sparse_clone master https://github.com/rmoyulong/AX6-Actions_Lede rust
#####################################################