#!/bin/bash

if [ ! -z "$3" ];then
    ip="$3"
    ip_server=${ip%.*}.1
fi

#默认主路由
rm -rf ./files/etc/config/dhcp
rm -rf ./files/etc/config/network

#如果files/etc/config文件夹不存在，创建文件夹
if [ ! -d "./files/etc/config" ]; then
  mkdir -p ./files/etc/config
fi
   
if [[ "$1" == *"旁路由"* ]]; then
    echo "config dnsmasq
	option domainneeded '1'
	option localise_queries '1'
	option rebind_protection '0'
	option local '/lan/'
	option domain 'lan'
	option expandhosts '1'
	option min_cache_ttl '3600'
	option use_stale_cache '3600'
	option cachesize '0'
	option nonegcache '1'
	option authoritative '1'
	option readethers '1'
	option leasefile '/tmp/dhcp.leases'
	option localservice '1'
	option dns_redirect '1'
	option ednspacket_max '1232'
	option localuse '1'
	option noresolv '1'
	option sequential_ip '1'
	option port '53'
	option rebind_localhost '1'
	list server '127.0.0.1#5335'

config dhcp 'lan'
	option interface 'lan'
	option start '100'
	option limit '150'
	option leasetime '12h'
	option dhcpv4 'server'
	option ignore '1'

config dhcp 'wan'
	option interface 'wan'
	option ignore '1'

config odhcpd 'odhcpd'
	option maindhcp '0'
	option leasefile '/tmp/hosts/odhcpd'
	option leasetrigger '/usr/sbin/odhcpd-update'
	option loglevel '4'">files/etc/config/dhcp
	
	echo "config interface 'loopback'
	option proto 'static'
	option ipaddr '127.0.0.1'
	option netmask '255.0.0.0'
	option device 'lo'

config globals 'globals'

config interface 'lan'
	option proto 'static'
	option ipaddr '$3'
	option netmask '255.255.255.0'
	option ip6assign '60'
	option device 'br-lan'
	option gateway '$ip_server'
	list dns '$ip_server'

config interface 'utun'
	option proto 'none'
	option ifname 'utun'
	option device 'utun'
	option auto '0'

config interface 'docker'
	option proto 'none'
	option auto '0'
	option device 'docker0'

config device
	option type 'bridge'
	option name 'docker0'

config device
	option name 'br-lan'
	option type 'bridge'
	list ports 'eth0'

config interface 'lan6'
	option proto 'dhcpv6'
	option reqaddress 'try'
	option reqprefix 'auto'
	option device 'br-lan'">files/etc/config/network
fi

echo "config system
	option timezone 'CST-8'
	option zonename 'Asia/Shanghai'
	option ttylogin '0'
	option log_size '64'
	option urandom_seed '0'
	option log_proto 'udp'
	option conloglevel '8'
	option cronloglevel '8'
	option zram_comp_algo 'lzo'
	option hostname '$2'

config timeserver 'ntp'
	list server 'ntp.aliyun.com'
	list server 'time1.cloud.tencent.com'
	list server 'time.ustc.edu.cn'
	list server 'cn.pool.ntp.org'">files/etc/config/system



