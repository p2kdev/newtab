PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:13.0:13.0

TWEAK_NAME = NewTab

NewTab_FILES = Tweak.xm
NewTab_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
