# Set etc/openwrt_release
sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION='R$(date +%Y.%m.%d)'|g" package/lean/default-settings/files/zzz-default-settings
echo "DISTRIB_SOURCECODE='lede'" >>package/base-files/files/etc/openwrt_release
# Modify default IP（FROM 192.168.1.1 CHANGE TO 192.168.31.4）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
