#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.245/g' openwrt/package/base-files/files/bin/config_generate
#2 修改DNS
sed -i "2i # network config" openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i :3i uci set network.lan.dns='192.168.1.245'" openwrt/package/lean/default-settings/files/zzz-default-settings
