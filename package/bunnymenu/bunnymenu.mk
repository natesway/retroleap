#############################################################################
#
# bunnymenu
#
#############################################################################

BUNNYMENU_VERSION = 74606e36679cbf97acb3ba0ece68c6cf35b231ed
BUNNYMENU_SITE = https://github.com/mac2612/bunnymenu.git
BUNNYMENU_SITE_METHOD = git
BUNNYMENU_LICENSE = GPLv3
BUNNYMENU_LICENSE_FILES = COPYING
BUNNYMENU_DEPENDENCIES = sdl sdl_image sdl_ttf
BUNNYMENU_INSTALL_STAGING = NO

define BUNNYMENU_BUILD_CMDS
	CROSS="$(TARGET_CROSS)" $(MAKE) -C $(@D)
endef

define BUNNYMENU_INSTALL_TARGET_CMDS
mkdir -p $(TARGET_DIR)/usr/share/bunnymenu/
$(INSTALL) -D -m 0755 $(@D)/theme/background.jpg $(TARGET_DIR)/usr/share/bunnymenu/
$(INSTALL) -D -m 0755 $(@D)/theme/mainfont.ttf $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/nes.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/snes.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/theme/genesis.png $(TARGET_DIR)/usr/share/bunnymenu
$(INSTALL) -D -m 0755 $(@D)/bunnymenu $(TARGET_DIR)/usr/bin/
$(INSTALL) -D -m 0755 $(@D)/scripts/startnes.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/startsnes.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/respawn_menu.sh $(TARGET_DIR)/usr/bin
$(INSTALL) -D -m 0755 $(@D)/scripts/S50bunnymenu $(TARGET_DIR)/etc/init.d
endef

$(eval $(generic-package))

