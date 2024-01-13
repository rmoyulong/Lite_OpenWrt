#!/bin/bash

# 科学上网插件
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default

# 修改本地时间格式
sed -i 's/os.date()/os.date("%a %Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm



