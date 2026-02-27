#公用函数
#source $GITHUB_WORKSPACE/Scripts/functions.sh

#cd ./openwrt/package/
#$GITHUB_WORKSPACE/patch/Packages.sh
#$GITHUB_WORKSPACE/patch/Handles.sh

#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git kenzo  https://github.com/kiddin9/kwrt-packages' >> feeds.conf.default

#rm libs/mbedtls/Makefile
#cp -f $GITHUB_WORKSPACE/patch/mbedtls/Makefile ./libs/mbedtls/Makefile
