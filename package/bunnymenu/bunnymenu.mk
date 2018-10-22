#############################################################################
#
# bunnymenu
#
#############################################################################

BUNNYMENU_VERSION = be531ecbddbf9313a152f4e023726f35343b8cb0
BUNNYMENU_SITE = https://github.com/mac2612/bunnymenu.git
BUNNYMENU_SITE_METHOD = git
BUNNYMENU_LICENSE = GPLv3
BUNNYMENU_LICENSE_FILES = COPYING
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
endef

$(eval $(generic-package))

