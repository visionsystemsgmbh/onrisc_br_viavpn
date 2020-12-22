#############################################################
#
# vsopenvpnd
#
#############################################################
VSOPENVPND_VERSION = 1.0.5
VSOPENVPND_SOURCE = vsopenvpnd-$(VSOPENVPND_VERSION).tar.xz
VSOPENVPND_SITE = ftp://ftp.visionsystems.de/pub/multiio/OnRISC/Baltos/viaVPN

define VSOPENVPND_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/vsopenvpnd $(TARGET_DIR)/usr/bin/vsopenvpnd
	cp -r $(@D)/viavpn $(TARGET_DIR)/opt
endef

$(eval $(generic-package))
