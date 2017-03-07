#############################################################
#
# vsopenvpnd
#
#############################################################
VSOPENVPND_VERSION = 1.0.0
VSOPENVPND_SOURCE = vsopenvpnd-$(VSOPENVPND_VERSION).tar.xz
VSOPENVPND_SITE = ftp://ftp.visionsystems.de/pub/multiio/OnRISC/Baltos/viaVPN

define VSOPENVPND_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/zlog.conf $(TARGET_DIR)/etc/zlog.conf
	$(INSTALL) -D -m 0755 $(@D)/vsopenvpnd $(TARGET_DIR)/usr/bin/vsopenvpnd
	cp -r $(@D)/viavpn $(TARGET_DIR)/opt
endef

$(eval $(generic-package))
