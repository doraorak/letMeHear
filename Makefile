TARGET := iphone:clang:latest:7.0
ARCHS = arm64
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = letMeHear

letMeHear_FILES = Tweak.x
letMeHear_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
