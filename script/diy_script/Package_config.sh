#!/bin/bash
# https://github.com/Hyy2001X/AutoBuild-Actions
# AutoBuild Module by Hyy2001
# AutoBuild Functions
# 在 cat >> .config <<EOF 到 EOF 之间粘贴配置

cat >> .config <<EOF
#KERNEL_BUILD
CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"
CONFIG_KERNEL_BUILD_USER="Ghaner"

# IPv6:
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_ip6tables=y
CONFIG_PACKAGE_ipv6helper=y
# 增减插件时同步增减feed中相同插件的同步 https://github.com/ghaner/openwrt-package/blob/main/.github/workflows/Package%20updater.yml
# dependencies:
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_ca-bundle=y
CONFIG_PACKAGE_ca-certificates=y
CONFIG_PACKAGE_coreutils=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_diffutils=y
CONFIG_DEFAULT_dnsmasq-full=y
CONFIG_PACKAGE_dnsmasq-extra=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_ipset=y
CONFIG_DEFAULT_iptables=y
CONFIG_PACKAGE_iptables-mod-extra=y
CONFIG_PACKAGE_iptables-mod-nat-extra=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_ip6tables-mod-nat=y
CONFIG_PACKAGE_kmod-ipt-extra=y
CONFIG_PACKAGE_kmod-tun=y
CONFIG_PACKAGE_libcap=y
CONFIG_PACKAGE_libcap-bin=y
CONFIG_PACKAGE_libustream-openssl=y
#CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_lua-openssl=y
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-base=y
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_openssl-util=y
CONFIG_PACKAGE_ruby=y
CONFIG_PACKAGE_ruby-yaml=y
#CONFIG_PACKAGE_shadowsocksr-libev-ssr-check=y
#CONFIG_PACKAGE_shadowsocksr-libev-ssr-local=y
#CONFIG_PACKAGE_shadowsocksr-libev-ssr-redir=y
#CONFIG_PACKAGE_shadowsocksr-libev-ssr-server=y
CONFIG_PACKAGE_wget-nossl=y
CONFIG_PACKAGE_wget-ssl=y
#CONFIG_PACKAGE_xray-core=y
#CONFIG_PACKAGE_xray-plugin=y

#application:
##system:
CONFIG_PACKAGE_luci-app-filebrowser=y
CONFIG_PACKAGE_luci-app-filetransfer=y
CONFIG_PACKAGE_luci-app-ttyd=y

##services:
CONFIG_PACKAGE_luci-app-adguardhome=y
CONFIG_PACKAGE_luci-app-godproxy=y
CONFIG_PACKAGE_luci-app-jd-dailybonus=y
CONFIG_PACKAGE_luci-app-openclash=y
CONFIG_PACKAGE_luci-app-unblockmusic=y


##network:
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-turboacc=y

# LuCI-theme
CONFIG_DEFAULT_luci-theme-bootstrap=y
CONFIG_PACKAGE_luci-theme-infinityfreedom=y


#block default PACKAGE:

CONFIG_PACKAGE_adbyby=n
CONFIG_PACKAGE_autosamba=n
CONFIG_PACKAGE_ddns-scripts_aliyun=n
CONFIG_PACKAGE_ddns-scripts_dnspod=n
CONFIG_PACKAGE_luci-app-accesscontrol=n
CONFIG_PACKAGE_luci-app-adbyby-plus=n
CONFIG_PACKAGE_luci-app-arpbind=n
CONFIG_PACKAGE_luci-app-autoreboot=n
CONFIG_PACKAGE_luci-app-ddns=n
CONFIG_PACKAGE_luci-app-nlbwmon=n
CONFIG_PACKAGE_luci-app-samba4=n
#CONFIG_DEFAULT_luci-app-ssr-plus=n
CONFIG_PACKAGE_luci-app-vlmcsd=n
CONFIG_PACKAGE_luci-app-ipsec-vpnd=n
CONFIG_PACKAGE_luci-app-upnp=n
CONFIG_PACKAGE_luci-app-vsftpd=n
CONFIG_PACKAGE_luci-app-wol=n
CONFIG_PACKAGE_luci-app-zerotier=n
CONFIG_PACKAGE_vsftpd-alt=n
CONFIG_PACKAGE_wol=n


EOF
