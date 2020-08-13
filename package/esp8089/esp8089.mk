################################################################################
#
# esp8089
#
################################################################################

ESP8089_VERSION = 58918e272f22da212045f6280c454085456ca1c0
ESP8089_SITE = https://github.com/al177/esp8089.git
ESP8089_SITE_METHOD = git
ESP8089_LICENSE = GPL-2.0
ESP8089_LICENSE_FILES = LICENSE

$(eval $(kernel-module))
$(eval $(generic-package))
