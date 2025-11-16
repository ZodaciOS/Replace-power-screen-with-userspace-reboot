ARCHS = arm64 arm64e
TARGET = iphone:clang:15.6
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_DEVICE_IP = localhost

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = InstantUserspaceReboot
InstantUserspaceReboot_FILES = Tweak.x
InstantUserspaceReboot_CFLAGS = -fobjc-arc
InstantUserspaceReboot_LIBRARIES += substrate

include $(THEOS_MAKE_PATH)/tweak.mk
