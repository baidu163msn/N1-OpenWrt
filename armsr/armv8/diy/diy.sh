#!/bin/bash

# Set default hostname
sed -i 's/ImmortalWrt/Phicomm-N1/g' package/base-files/files/bin/config_generate

# Set default root password to "password"
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/base-files/files/etc/shadow

# Add sing-box feed (if not in default feeds)
# Option A: from small_5 feed (common source)
git clone https://github.com/small-5/openwrt-sing-box package/sing-box
