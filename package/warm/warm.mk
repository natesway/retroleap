#############################################################################
#
# warm
#
#############################################################################

WARM_VERSION = a6f015da3b10b82a476250793645c071340decbc
WARM_SITE = https://github.com/notaz/warm.git
WARM_SITE_METHOD = git
WARM_LICENSE = GPLv3
WARM_LICENSE_FILES = COPYING
WARM_MODULE_SUBDIRS = module
WARM_MODULE_MAKE_OPTS = KERNEL_DIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))

