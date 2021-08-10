#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


# Correct checksum, some package's checksum has changed, causing download failure
sed -i 's/8d12b42623eeefee872f123bd0dc85d535b00df4d42e865f993c40f7bfc92b1e/ed285f4accaf05344f90975757b3dbfe772ba41d1c401c2648b7fa45b711bdd4/g' /home/runner/work/newifi3-d2-openwrt-slim/newifi3-d2-openwrt-slim/openwrt/package/libs/libpcap/Makefile