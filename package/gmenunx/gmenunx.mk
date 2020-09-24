#############################################################################
#
# gmenunx
#
#############################################################################

GMENUNX_VERSION = f25c8e36051809b81ab94f0dc30f8709f0b1c327
GMENUNX_SITE = https://github.com/mac2612/gmenunx.git
GMENUNX_SITE_METHOD = git
GMENUNX_LICENSE = GPLv3
GMENUNX_LICENSE_FILES = COPYING
GMENUNX_DEPENDENCIES = sdl sdl_image sdl_ttf
GMENUNX_INSTALL_STAGING = NO

define GMENUNX_BUILD_CMDS
	CROSS_COMPILE="$(TARGET_CROSS)" $(MAKE) -C $(@D) -f Makefile.lf1000 zip
endef

define GMENUNX_INSTALL_TARGET_CMDS
mkdir -p $(TARGET_DIR)/usr/share/bunnymenu/
$(INSTALL) -D -m 0755 $(@D)/theme/background.jpg $(TARGET_DIR)/usr/share/bunnymenu/
$(INSTALL) -D -m 0755 $(@D)/theme/mainfont.ttf $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/nes.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/snes.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/genesis.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/bunnymenu $(TARGET_DIR)/usr/bin/
$(INSTALL) -D -m 0755 $(@D)/scripts/startgenesis.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/startnes.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/startsnes.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/respawn_menu.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/S50bunnymenu -t $(TARGET_DIR)/etc/init.d
endef

$(eval $(generic-package))

