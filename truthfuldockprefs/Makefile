include ~/theos/makefiles/common.mk
ARCHS = arm64e arm64 armv7 armv7s
BUNDLE_NAME = TruthfulDockPrefs

TruthfulDockPrefs_FILES = TDPRootListController.m
TruthfulDockPrefs_INSTALL_PATH = /Library/PreferenceBundles
TruthfulDockPrefs_FRAMEWORKS = UIKit
TruthfulDockPrefs_PRIVATE_FRAMEWORKS = Preferences
TruthfulDockPrefs_CFLAGS = -fobjc-arc

include ~/theos/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/TruthfulDockPrefs.plist$(ECHO_END)
