include $(TOPDIR)/rules.mk

PKG_NAME:=udp2raw
PKG_VERSION:=20170813
PKG_RELEASE:=1
PKG_REV:=7ac0d3561dc210363f120a0503abd981a34b9b79

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
PKG_SOURCE_URL:=https://github.com/wangyu-/udp2raw-tunnel.git
PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV)


PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV)

include $(INCLUDE_DIR)/package.mk

define Package/udp2raw
  CATEGORY:=hzqim
  TITLE:=Fake-TCP or ICMP by using raw socket.
  DEPENDS:= +libstdcpp
endef

define Package/udp2raw/description
An Encrpyted,Anti-Replay,Multiplexed UDP Tunnel which can help you Bypass UDP Block or QoS by tunneling UDP traffic through Fake-TCP or ICMP by using raw socket.It aslo acts as a Connection Stablizer.
endef


define Package/udp2raw/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/udp2raw $(1)/usr/bin
endef


$(eval $(call BuildPackage,udp2raw))
