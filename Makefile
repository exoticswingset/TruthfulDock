INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64e arm64 armv7 armv7s
include ~/theos/makefiles/common.mk

TWEAK_NAME = TruthfulDock

TruthfulDock_FILES = Tweak.x
TruthfulDock_CFLAGS = -fobjc-arc

include ~/theos/makefiles/tweak.mk
SUBPROJECTS += truthfuldockprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
