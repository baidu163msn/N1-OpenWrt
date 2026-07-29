#!/bin/bash

sed -i 's/ImmortalWrt/Phicomm-N1/g' package/base-files/files/bin/config_generate
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/base-files/files/etc/shadow

# Add independent sing-box (not dependent on passwall)
git clone --depth=1 https://github.com/kiddin9/openwrt-packages package/kiddin9