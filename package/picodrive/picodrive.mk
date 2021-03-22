#############################################################################
#
# picodrive
#
#############################################################################

PICODRIVE_VERSION = 1d366b1ad9362fd463c42979c8a687dfc7f46c46
PICODRIVE_SITE = https://github.com/notaz/picodrive.git
PICODRIVE_SITE_METHOD = git
PICODRIVE_LICENSE = GPLv3
PICODRIVE_LICENSE_FILES = COPYING
PICODRIVE_DEPENDENCIES = sdl sdl_image sdl_ttf
PICODRIVE_INSTALL_STAGING = NO
PICODRIVE_GIT_SUBMODULES = YES

define PICODRIVE_CONFIGURE_CMDS
        cd $(@D) ; CC="$(TARGET_CROSS)gcc" LD="$(TARGET_CROSS)ld" CXX="$(TARGET_CROSS)g++" ARCH=arm    ./configure
  
endef

define PICODRIVE_BUILD_CMDS
        $(MAKE) -C $(@D)/cpu/cyclone CONFIG_FILE=$(@D)/cpu/cyclone_config_armv4.h HAVE_ARMV6=0
        CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" ARCH=arm -C $(@D) -f Makefile platform="generic"
endef

define PICODRIVE_INSTALL_TARGET_CMDS
$(INSTALL) -D -m 0755 $(@D)/PicoDrive $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))

