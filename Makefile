include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CustomBatteryIcon

CustomBatteryIcon_FILES = Tweak.xm
CustomBatteryIcon_FRAMEWORKS = UIKit
CustomBatteryIcon_BUNDLE = CustomBatteryIconApp

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
