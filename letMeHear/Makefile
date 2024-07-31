TARGET := iphone:clang:latest:7.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = letMeHear

letMeHear_FILES = Tweak.x
letMeHear_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
