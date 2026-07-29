#!/bin/bash

# Set default hostname
sed -i 's/ImmortalWrt/Phicomm-N1/g' package/base-files/files/bin/config_generate

# Set default root password to "password"
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/base-files/files/etc/shadow

# Check if sing-box already exists in default feeds
echo "========== Searching sing-box in feeds =========="
if find feeds -maxdepth 3 -name "Makefile" -exec grep -l "sing-box" {} \; 2>/dev/null | grep -q .; then
    echo "sing-box found in default feeds, no extra source needed"
else
    echo "sing-box NOT in default feeds, adding third-party source..."
    git clone --depth=1 https://github.com/kiddin9/openwrt-packages package/kiddin9
fi
echo "================================================="
