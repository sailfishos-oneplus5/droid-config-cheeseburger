%package -n patterns-sailfish-device-adaptation-cheeseburger
Summary: Jolla HW Adaptation cheeseburger
Requires: droid-hal-cheeseburger
Requires: droid-hal-cheeseburger-detritus
Requires: droid-hal-cheeseburger-img-boot
#Requires: droid-hal-cheeseburger-img-recovery
Requires: droid-hal-cheeseburger-kernel-modules
Requires: droid-config-cheeseburger-sailfish
Requires: droid-config-cheeseburger-pulseaudio-settings
Requires: droid-config-cheeseburger-policy-settings
Requires: droid-config-cheeseburger-preinit-plugin
Requires: droid-config-cheeseburger-flashing
Requires: droid-config-cheeseburger-bluez5
Requires: droid-hal-version-cheeseburger

# Hybris packages
Requires: libhybris-libEGL
Requires: libhybris-libGLESv2
Requires: libhybris-libwayland-egl

# Telephony
Requires: ofono-ril-binder-plugin

# Cellular data
Requires: dummy_netd

# Bluetooth
Requires: bluebinder

# NFC
Requires: nfcd-binder-plugin

# Sensors
Requires: hybris-libsensorfw-qt5

# Vibra
Requires: ngfd-plugin-native-vibrator
Requires: qt5-feedback-haptics-native-vibrator

# Needed for /dev/touchscreen symlink
Requires: qt5-plugin-generic-evdev

# Audio
Requires: pulseaudio-modules-droid
Requires: pulseaudio-modules-droid-hidl
# for audio recording to work:
Requires: qt5-qtmultimedia-plugin-mediaservice-gstmediacapture

# Camera
Requires: audiosystem-passthrough-dummy-af

# These need to be per-device due to differing backends (fbdev, eglfs, hwc, ..?)
Requires: qt5-qtwayland-wayland_egl
Requires: qt5-qpa-hwcomposer-plugin
Requires: qtscenegraph-adaptation

# For devices using droidmedia & gst-droid
Requires: gstreamer1.0-droid
Requires: gstreamer1.0-libav
Requires: gmp-droid

# This is needed for notification LEDs
Requires: mce-plugin-libhybris

# USB mode controller
Requires: usb-moded

# hammerhead, grouper, and maguro use this in scripts, so include for all
Requires: rfkill

# For GPS
Requires: geoclue-provider-hybris

# OnePlus 5 specific packages
Requires: triambienced
Requires: onyx-triambience-settings-plugin
Requires: gestured
Requires: onyx-gesture-settings-plugin

%description -n patterns-sailfish-device-adaptation-cheeseburger
Pattern with packages for cheeseburger HW Adaptation

%files -n patterns-sailfish-device-adaptation-cheeseburger
