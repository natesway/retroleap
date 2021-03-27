#############################################################################
#
# gpsp
#
#############################################################################

#GPSP_VERSION = 862e940b8c108fb0d29f9a1644be7a5360d7230d
#GPSP_SITE = https://github.com/notaz/gpsp.git
GPSP_VERSION = 76fe0ae59beec19248eebb247b1e42cf12b70dd5
GPSP_SITE = https://github.com/nirvous/gpsp_lf1000.git
GPSP_SITE_METHOD = git
GPSP_LICENSE = GPLv3
GPSP_LICENSE_FILES = COPYING
GPSP_DEPENDENCIES = sdl sdl_image sdl_ttf
GPSP_INSTALL_STAGING = NO
GPSP_GIT_SUBMODULES = YES


define GPSP_BUILD_CMDS
        CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" $(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" ARCH=arm -C $(@D) -f lf1000/Makefile all
endef

define GPSP_INSTALL_TARGET_CMDS
$(INSTALL) -D -m 0755 $(@D)/gpsp_lf1000 $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))

