# 项目简介
本固件适配斐讯 N1 旁路由模式，追求轻量，不具备 PPPoE、WiFi 相关功能。<br>
固件仅包含默认皮肤以及下列组件：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：系统更新、文件传输、CPU 调频等<br>
[OpenClash](https://github.com/vernesong/OpenClash)：Clash 客户端（含 [sing-box](https://github.com/SagerNet/sing-box) 内核）<br>
[docker / dockerman](https://docs.docker.com)：容器管理<br>
samba4：存储共享<br>
luci-app-zerotier：异地组网<br>
luci-app-ttyd：网页终端<br>
[filebrowser-go](https://github.com/sbwml/luci-app-filebrowser-go)：网页文件管理<br>
[luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)：主题皮肤<br>
***
> 出于内存占用与稳定性考虑，已移除 PassWall、Daed、Podman 等组件；uPnP 默认关闭（旁路由无 NAT，无需 uPnP）。<br>

# 默认设置
| 项目 | 值 |
|------|-----|
| IP | 192.168.68.68 |
| 网关 | 192.168.68.1 |
| 用户 | root |
| 密码 | password |
| DTB | meson-gxl-s905d-p230.dtb |
***
# 致谢
本项目基于 [ImmortalWrt-25.12](https://github.com/immortalwrt/immortalwrt/tree/openwrt-25.12) 源码编译，使用 ophub 的[脚本](https://github.com/ophub/amlogic-s9xxx-openwrt)和 flippy 的[内核](https://github.com/ophub/kernel/releases/tag/kernel_flippy)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。
