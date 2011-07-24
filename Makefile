TARGET_IPHONEOS_DEPLOYMENT_VERSION = 4.2

TWEAK_NAME = WebGLEnabler
WebGLEnabler_FILES = Tweak.xm
WebGLEnabler_FRAMEWORKS = Foundation UIKit

include theos/makefiles/common.mk
include theos/makefiles/tweak.mk
