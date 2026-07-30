#!/bin/bash

# Set default hostname
sed -i 's/ImmortalWrt/Phicomm-N1/g' package/base-files/files/bin/config_generate

# Set default root password to "password"
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/base-files/files/etc/shadow

# Add luci-app-amlogic (ophub)
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

# Add luci-app-openclash (vernesong)
git clone --depth=1 https://github.com/vernesong/OpenClash package/luci-app-openclash
