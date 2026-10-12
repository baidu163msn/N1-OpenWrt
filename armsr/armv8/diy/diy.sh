#!/bin/bash

# Default hostname (Phicomm-N1) is applied via files/etc/uci-defaults/99-n1-defaults,
# and the default root password is left as "password" (matches README).

# Add luci-app-amlogic (ophub)
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic

# Add luci-app-openclash (vernesong)
git clone --depth=1 https://github.com/vernesong/OpenClash package/luci-app-openclash

# Apply luci online-users ARP device fix (non-fatal; skip if upstream changed)
if patch -p1 --forward < "$GITHUB_WORKSPACE/armsr/armv8/diy/luci.patch"; then
    echo "Applied luci.patch"
else
    echo "WARN: luci.patch did not apply cleanly (upstream may have changed); continuing."
fi
