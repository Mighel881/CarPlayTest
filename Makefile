INSTALL_TARGET_PROCESSES = SpringBoard

TARGET = iphone:clang:11.2:11.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CarPlayTest

CarPlayTest_FILES = Tweak.x
CarPlayTest_PRIVATE_FRAMEWORKS = MusicCarDisplayUI
CarPlayTest_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
