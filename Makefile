include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CustomBattery

CustomBattery_FILES = Tweak.xm
CustomBattery_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
