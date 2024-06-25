cd openwrt

#公用函数
source $GITHUB_WORKSPACE/Scripts/functions.sh
        
cp -rf $GITHUB_WORKSPACE/patch/k2x/mt7620a_phicomm_psg1218a.dts target/linux/ramips/dts
cp -rf $GITHUB_WORKSPACE/patch/k2x/mt7620.mk target/linux/ramips/image

rm -rf package/network/services/hostapd
cp -rf $GITHUB_WORKSPACE/patch/k2x/package.tar.gz .
tar zxvfp package.tar.gz

git_sparse_clone master https://github.com/rmoyulong/AX6-Actions_Lede qca
