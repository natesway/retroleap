#############################################################################
#
# pocketsnes
#
#############################################################################

POCKETSNES_VERSION = 985969a9f3487ae8e2421b09567fd7e22fb10a5c
POCKETSNES_SITE = https://github.com/Nebuleon/PocketSNES.git
POCKETSNES_SITE_METHOD = git
POCKETSNES_LICENSE = GPLv3
POCKETSNES_LICENSE_FILES = COPYING
POCKETSNES_DEPENDENCIES = sdl sdl_image sdl_ttf
POCKETSNES_INSTALL_STAGING = NO
POCKETSNES_GIT_SUBMODULES = YES


define POCKETSNES_BUILD_CMDS
        CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CAANOO=1 CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" ARCH=arm -C $(@D) -f Makefile all
endef

define POCKETSNES_INSTALL_TARGET_CMDS
$(INSTALL) -D -m 0755 $(@D)/PocketSNES $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))

