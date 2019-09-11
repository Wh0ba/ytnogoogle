INSTALL_TARGET_PROCESSES = YouTube

ARCHS= armv7 arm64

TARGET=iphone:clang:latest:7.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ytnogoogle

ytnogoogle_FILES = Tweak.x
ytnogoogle_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
