INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7 armv7s arm64 arm64e
include ~/theos/makefiles/common.mk

TWEAK_NAME = TruthfulDock

TruthfulDock_FILES = Tweak.x
TruthfulDock_CFLAGS = -fobjc-arc

include ~/theos/makefiles/tweak.mk
