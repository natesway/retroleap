#############################################################################
#
# ohboy
#
#############################################################################

OHBOY_VERSION = 4720bcf5fbb4d80d85d6f623847d29cefea2cd94
OHBOY_SITE = https://github.com/hi-ban/ohboy.git
OHBOY_SITE_METHOD = git
OHBOY_LICENSE = GPLv3
OHBOY_LICENSE_FILES = COPYING
OHBOY_DEPENDENCIES = sdl sdl_image sdl_ttf
OHBOY_INSTALL_STAGING = NO
OHBOY_GIT_SUBMODULES = YES


define OHBOY_BUILD_CMDS
        CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" ARCH=arm -C $(@D) -f Makefile.linux_sdl all
endef

define OHBOY_INSTALL_TARGET_CMDS
$(INSTALL) -D -m 0755 $(@D)/ohboy $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))

