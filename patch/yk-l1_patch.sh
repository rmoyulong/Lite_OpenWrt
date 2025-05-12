cd openwrt
          
#修改优酷路由宝l1的的内核版本
if [[ "${{ inputs.CORE_header }}" == *"ramips_mt7620_DEVICE_youku_yk-l1.config"* ]]; then
  mv $GITHUB_WORKSPACE/patch/ramips/Makefile target/linux/ramips
  #chmod -Rf 755 target/linux/ramips
  ls -l target/linux/ramips         
fi