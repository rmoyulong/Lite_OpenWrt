cd openwrt

cp -rf $GITHUB_WORKSPACE/patch/k2x/mt7620a_phicomm_psg1218a.dts target/linux/ramips/dts
cp -rf $GITHUB_WORKSPACE/patch/k2x/mt7620.mk target/linux/ramips/image