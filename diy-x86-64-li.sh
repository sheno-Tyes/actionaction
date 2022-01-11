#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
#git clone https://github.com/jerrykuku/openwrt-package package/one
#git clone https://github.com/kenzok8/openwrt-packages package/two
#git clone https://github.com/kenzok8/small package/small
#git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
# Add luci-app-ssr-plus
#pushd package
#git clone --depth=1 https://github.com/fw876/helloworld
#popd
rm -rf ./feeds/other/luci-lib-docker
rm -rf ./package/feeds/other/luci-lib-docker
rm -rf ./package/feeds/luci/luci-lib-docker
rm -rf ./feeds/luci/collections/luci-lib-docker
rm -rf ./feeds/luci/applications/luci-app-dockerman
rm -rf ./feeds/other/luci-app-dockerman
rm -rf ./package/feeds/luci/luci-app-dockerman
##
rm -rf ./package/feeds/other/luci-app-adguardhome
rm -rf ./feeds/other/luci-app-adguardhome
##
rm -rf ./package/feeds/other/luci-app-diskman
rm -rf ./feeds/other/luci-app-diskman
rm -rf feeds/packages/libs/libcap
mkdir package/community
pushd package/community
svn co https://github.com/immortalwrt/packages/trunk/net/redsocks2


svn co https://github.com/openwrt/openwrt/trunk/package/libs/libcap
# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus
# Add luci-app-bypass
git clone --depth=1 https://github.com/kiddin9/openwrt-bypass

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr
## add adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome
#add docker
git clone https://github.com/lisaac/luci-lib-docker
git clone https://github.com/lisaac/luci-app-dockerman
# add diskman
git clone https://github.com/lisaac/luci-app-diskman
# Add smartdns
#svn co https://github.com/pymumu/smartdns/trunk/package/openwrt ../smartdns
#svn co https://github.com/pymumu/luci-app-smartdns/trunk ../luci-app-smartdns

popd
