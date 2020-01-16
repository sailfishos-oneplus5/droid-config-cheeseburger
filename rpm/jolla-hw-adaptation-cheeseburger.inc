Requires: droid-hal-%{device}
Requires: droid-hal-%{device}-detritus
Requires: droid-hal-%{device}-img-boot
#Requires: droid-hal-%{device}-img-recovery
Requires: droid-hal-%{device}-kernel-modules
Requires: droid-hal-%{device}-tools
Requires: droid-config-%{device}-sailfish
Requires: droid-config-%{device}-pulseaudio-settings
Requires: droid-config-%{device}-policy-settings
Requires: droid-config-%{device}-preinit-plugin
Requires: droid-config-%{device}-flashing
Requires: droid-config-%{device}-bluez5
Requires: droid-hal-version-%{device}

# Hybris packages
Requires: libhybris-libEGL
Requires: libhybris-libGLESv2
Requires: libhybris-libwayland-egl

# Telephony
Requires: ofono-ril-binder-plugin

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
Requires: audioflingerglue

# These need to be per-device due to differing backends (fbdev, eglfs, hwc, ..?)
Requires: qt5-qtwayland-wayland_egl
Requires: qt5-qpa-hwcomposer-plugin
Requires: qtscenegraph-adaptation

# Add GStreamer v1.0 as standard
Requires: gstreamer1.0
Requires: gstreamer1.0-droid
Requires: gstreamer1.0-libav
Requires: gstreamer1.0-plugins-good
Requires: gstreamer1.0-plugins-base
Requires: gstreamer1.0-plugins-bad
Requires: nemo-gstreamer1.0-interfaces

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
