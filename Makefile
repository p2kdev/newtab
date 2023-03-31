export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:12.4:12.0
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e

TWEAK_NAME = NewTab

NewTab_FILES = Tweak.xm
NewTab_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
