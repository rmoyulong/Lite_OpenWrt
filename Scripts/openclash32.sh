#设置armv7 32位的openclash

meta="openclash"
if [ ! -z "$1" ];then
    meta=$1
fi

#删除以前设置的所有openclash
rm -rf ./package/OpenClash
rm -rf ./package/luci-app-openclash
rm -rf feeds/kenzo/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash

#如果 core 文件夹不存在，创建文件夹
if [ ! -d "./files/etc/openclash/core" ]; then
  mkdir -p files/etc/openclash/core
fi

#Open Clash
git clone --depth=1 --single-branch --branch "dev" https://github.com/vernesong/OpenClash.git package/OpenClash

CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-armv7.tar.gz"
CLASH_TUN_URL=$(curl -fsSL https://api.github.com/repos/vernesong/OpenClash/contents/master/premium\?ref\=core | grep download_url | grep armv7 | awk -F '"' '{print $4}')

if [ "${meta}" == *"openclash"* ];then
  CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-armv7.tar.gz"
else
  CLASH_META_URL="https://github.com/DustinWin/proxy-tools/releases/download/mihomo/mihomo-meta-linux-armv7.tar.gz"
fi
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"
GEO_MMDB_URL="https://github.com/alecthw/mmdb_china_ip_list/raw/release/lite/Country.mmdb"

wget -qO- $CLASH_DEV_URL | tar xOvz > files/etc/openclash/core/clash
wget -qO- $CLASH_TUN_URL | gunzip -c > files/etc/openclash/core/clash_tun
#wget -qO- $CLASH_META_URL | tar xOvz > files/etc/openclash/core/clash_meta
wget -qO- $GEOIP_URL > files/etc/openclash/GeoIP.dat
wget -qO- $GEOSITE_URL > files/etc/openclash/GeoSite.dat
wget -qO- $GEO_MMDB_URL > files/etc/openclash/Country.mmdb

if [ "${meta}" == *"openclash"* ];then
  curl -sfL -o ./meta.tar.gz $CLASH_META_URL
  tar -zxf ./meta.tar.gz && cp -rf ./clash ./files/etc/openclash/core/clash_meta
else
  curl -sfL -o ./meta.tar.gz $CLASH_META_URL
  tar -zxf ./meta.tar.gz && cp -rf ./CrashCore ./files/etc/openclash/core/clash_meta
fi