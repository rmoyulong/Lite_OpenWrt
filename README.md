# Lite_OpenWrt
[![build](https://img.shields.io/github/actions/workflow/status/rmoyulong/Lite_OpenWrt/youku_L1-tiny.yml)](https://github.com/rmoyulong/Lite_OpenWrt/actions/workflows/youku_L1-tiny.yml) [![downloads](https://img.shields.io/github/downloads/rmoyulong/Lite_OpenWrt/total)](https://github.com/rmoyulong/Lite_OpenWrt/releases) [![downloads@latest](https://img.shields.io/github/downloads/rmoyulong/Lite_OpenWrt/latest/total)](https://github.com/rmoyulong/Lite_OpenWrt/releases/latest)<br>
About
自用固件，家里吃灰的路由设备，编译固件只为了怀旧-比如K2、K3、ax5、ax6！！！！

目前支持：

k2   k2t  k3  ax5  ax6  优酷路由宝L1

AX5 AX6支持NSS openwrt库<br>
---------------------------------------------------------------------<br>
ipq80xx ipq60xx<br>
Nss openwrt库 => https://github.com/VIKINGYFY/immortalwrt 分支 main <br> 
Nss 依赖 => https://github.com/qosmio/nss-packages.git 分支 nss_packages <br>
nss scripts => https://github.com/qosmio/sqm-scripts-nss.git 分支 sqm_scripts_nss <br>
---------------------------------------------------------------------<br>
如果homeproxy无法启动，请将homeproxy.7z下载解压，然后用winscp类型的工具上传到路由器，替换路由器上的相同文件。<br>
然后执行/etc/init.d/homeproxy restart 并重启路由器即可！
